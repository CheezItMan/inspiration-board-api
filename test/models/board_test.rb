require "test_helper"

describe Board do
  let(:board) { Board.new }

  it "must be valid" do
    value(board).must_be :valid?
  end
end
