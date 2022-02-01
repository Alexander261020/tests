class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :name, length: { minimum: 2 }

  before_validation :set_name, on: :create

  private

  def set_name
    self.name = "Children without name №#{rand(777)}" if self.name.blank?
  end
end
