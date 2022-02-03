class Question < ApplicationRecord
  belongs_to :level

  validates :number, presence: true
  validates :name, presence: true
  validates :answer, presence: true
end
