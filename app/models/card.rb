
VALID_EMOJIS = ["&#1F44E", "&#1F680", "&#1F37A", "&#1F601", "&#1F63A", "&#1F436", "&#1F6CF	"]

class Card < ApplicationRecord
  belongs_to :board

  validate :valid_fields


  def valid_fields
    if ((self.text.nil? || self.text.length < 1) && \
      !VALID_EMOJIS.include?(self.emoji))
      errors.add(:text, "invalid text or missing emoji")
    end
  end
end
