require "test_helper"

describe Card do
  # Arrange
  let(:card) { cards(:one) }

  it "must have a valid fixture" do

    # Assert
    expect(card).must_be :valid?
  end

  it "is invalid without a title" do
    # Act
    card.title = nil

    # Assert
    expect(card.valid?).must_equal false
    expect(card.errors.keys).must_include :title
    expect(card.errors[:title]).must_include "can't be blank"
  end

  describe "relationships" do

    it "is not valid without a board" do
      # Act
      card.board = nil

      # Assert
      expect(card.valid?).must_equal false
    end

    it "can get the parent board" do
      # Assert
      expect(card.board).must_equal boards(:adas)
    end
  end
end
