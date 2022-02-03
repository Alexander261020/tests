class Level < ApplicationRecord
  belongs_to :classification
  has_many :questions

  validates :name, presence: true
end
