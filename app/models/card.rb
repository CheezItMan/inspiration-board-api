
VALID_EMOJIS = ["👍", "💯", "🍺", "😊", "🐱", "🐶", "🛌"]

class Card < ApplicationRecord
  belongs_to :board

  validates :text, presence: { if: :emoji_valid?, message: "invalid text or emoji" }

  def emoji_valid?
    return self.emoji.nil?  || VALID_EMOJIS.includes?(self.emoji)
  end
end
