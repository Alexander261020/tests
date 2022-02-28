class User < ApplicationRecord
  rolify
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :username, length: { minimum: 2, maximum: 20}
  validates :email, presence: true

  before_validation :set_username, on: :create

  after_create :assign_default_role

  private

  def set_username
    self.username = "User №#{rand(777)}" if self.username.blank?
  end

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
end
