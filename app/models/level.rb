class Level < ApplicationRecord
  belongs_to :classification

  validates :name, presence: true
end
