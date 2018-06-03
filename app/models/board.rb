class Board < ApplicationRecord

  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
end
