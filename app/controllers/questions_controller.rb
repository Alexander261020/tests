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
  end

  private

  def parsing_testedu(uri)
    # uri= 'https://testedu.ru/test/english-language/1-klass/vstav-propushhennuyu-bukvu.html'
    question_params = {}
    doc = Nokogiri::HTML(URI.open(uri))

    questions = doc.css('div[class="onetest"]').map do |div|
      answers = []
      div.css('font[size="4"]').each do |elem|
        question_params["number"] = elem.content.delete!("\n\r")
      end
      div.css('p').each do |elem|
        question_params["name"] = elem.content
      end
      div.css('span').each do |elem|
        answers << elem.content
      end
      question_params["answer"] = answers
      question_params
    end
    questions
  end
end
