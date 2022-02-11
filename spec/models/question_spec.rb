require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:firstClass) { Level.new(name: 'Класс №1') }
  let(:question) { described_class.new(number: 'Вопрос №3', name: '2+2=?', answer: [2,4,6,8]) }

  context 'validations check' do
    it { should validate_presence_of :number }
    it { should validate_presence_of :name }
    it { should validate_presence_of :answer }
  end

  it 'must return number' do
    expect(question.number).to eq('Вопрос №3')
  end

  it 'must return name' do
    expect(question.name).to eq('2+2=?')
  end

  it 'must return answer' do
    expect(question.answer).to eq(["2","4","6","8"])
    expect(question.answer).to be_an_instance_of(Array)
  end

  it 'must return level' do
    question.level = firstClass
    expect(question.level).to eq(firstClass)
  end
end
