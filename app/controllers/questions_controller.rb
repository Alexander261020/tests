class QuestionsController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def create
    level = Level.find_by!(id: params[:level])
    questions = parsing_testedu(params[:url_path])

    questions.each do | question_params |
      question = Question.new(question_params)
      question.level = level
      question.save
    end
    # http://localhost:3000/classifications/1003/levels/33  notice: I18n.t('controllers.comments.created')
    redirect_to classification_level_path(level.classification, level)
  end

  private

  def parsing_testedu(uri)
    # uri= 'https://testedu.ru/test/english-language/1-klass/vstav-propushhennuyu-bukvu.html'
    doc = Nokogiri::HTML(URI.open(uri))
    questions = []

    questions = doc.css('div[class="onetest"]').map do |div|
      answers = []
      number, name = ''
      div.css('font[size="4"]').each do |elem|
        number = elem.content.delete!("\n\r")
      end
      div.css('p').each do |elem|
        name = elem.content
      end
      div.css('span').each do |elem|
        answers << elem.content
      end
      { "number" => number, "name" => name, "answer" => answers }
    end
  end
end
