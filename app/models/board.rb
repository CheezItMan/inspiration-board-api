class Board < ApplicationRecord

  has_many :cards

  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
end
