class Card < ApplicationRecord
  belongs_to :board

  validates :text, presence: { if: :image_url_blank?, message: "can't be blank" }

  def image_url_blank?
    return self.image_url.nil?  || self.image_url.length < 1
  end
end
