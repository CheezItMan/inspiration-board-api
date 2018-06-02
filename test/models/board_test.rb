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
end
