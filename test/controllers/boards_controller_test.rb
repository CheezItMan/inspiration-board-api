require "test_helper"

describe BoardsController do

  describe "index" do
    before do
      # Act
      get boards_path
    end
    it "should get index" do
      # Assert
      expect(response).must_be :success?
      expect(response.header['Content-Type']).must_include 'json'
    end

    it "should return all the boards lexicographical in order" do
      body = JSON.parse(response.body)

      # Assert
      expect(body).must_be_kind_of Array
      expect(body.length).must_equal 2

      previous = nil

      body.each do |board|
        if previous
          expect(previous[:name] <=> board[:name]).must_be :<=, 0
        end
        previous = board
      end
    end
  end

  describe "show" do
    it "can retrieve a valid board" do
      # Act
      get board_path(boards(:adas).id)

      # Assert
      expect(response).must_be :success?
    end

    it "responds with not_found if given an invalid id" do
      # Arrange
      adas = boards(:adas)
      adas.destroy
      # Act
      get board_path(adas.id)
      body = JSON.parse(response.body)

      # Assert
      expect(response).must_be :not_found?
      expect(body["ok"]).must_equal false
      expect(body["error"]).must_equal "not_found"
    end
  end

end
