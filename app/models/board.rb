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

  def self.create_new_board name
    board = Board.new name: name

    template = Board.first

    template.cards.each do |card|
      board.cards << (Card.create text: card.text, emoji: card.emoji)
    end

    board.save

    return board
  end

end
