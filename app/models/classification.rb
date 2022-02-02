class Classification < ApplicationRecord
  has_many :levels, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  scope :with_levels, -> { joins(:levels) }
end
