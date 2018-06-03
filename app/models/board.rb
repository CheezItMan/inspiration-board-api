class Board < ApplicationRecord

  has_many :cards

  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true

  def destroy_board
    self.cards.each do |card|
      card.destroy
    end

    self.destroy
  end

end
