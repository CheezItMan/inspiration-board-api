class Card < ApplicationRecord
  belongs_to :board

  validates :title, presence: true, allow_blank: false
end
