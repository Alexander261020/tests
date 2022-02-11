class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :username, length: { minimum: 2, maximum: 20}
  validates :email, presence: true

  before_validation :set_username, on: :create

  private

  def set_username
    self.username = "User №#{rand(777)}" if self.username.blank?
  end
end
