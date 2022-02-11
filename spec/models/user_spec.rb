require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { described_class.new(username: 'Ivan', email: 'sss@mail.ru') }

  context 'validations check' do
    it { should validate_presence_of :email }
  end

  it 'return username' do
    expect(user.username).to eq('Ivan')
    expect(user.username).to be_an_instance_of(String)
  end

  it 'return email' do
    expect(user.email).to eq('sss@mail.ru')
    expect(user.email).to be_an_instance_of(String)
  end
end
