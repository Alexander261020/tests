class Classification < ApplicationRecord
  has_many :levels

  validates :name, presence: true
  validates :name, uniqueness: true
end
