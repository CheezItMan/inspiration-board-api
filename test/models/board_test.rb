require "test_helper"

describe Board do
  let(:board) { boards(:adas) }

  it "must be valid" do
    value(board).must_be :valid?
  end

  it "is not valid without a name" do
    board.name = nil

    expect(board.valid?).must_equal false
  end

  it "is not valid with a duplicate name" do
    board = Board.new
    board.name = boards(:adas).name

    expect(board.valid?).must_equal false
    expect(board.errors[:name]).must_include "has already been taken"
  end

  describe "relationships" do

    it "can have many cards" do
      expect(board.cards.length).must_equal 2
    end


  end
end
