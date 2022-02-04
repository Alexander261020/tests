class Level < ApplicationRecord
  belongs_to :classification
  has_many :questions, dependent: :destroy

  validates :name, presence: true
end
