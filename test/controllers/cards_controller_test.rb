require "test_helper"

describe CardsController do
  let (:board) {boards(:adas)}

  it "should get index" do
    # Act
    get board_cards_path(board.id)

    # Assert
    expect(response).must_be :successful?
    expect(response.header['Content-Type']).must_include 'json'

  end

  describe "show" do
    it "should get show" do
      # Arrange
      card = board.cards.first

      # Act
      get board_card_path(board.id, card.id)

      # Assert
      expect(response).must_be :successful?
    end

    it "will report when it can't find a card" do
      # Arrange
      card = board.cards.first
      card.destroy

      # Act
      get board_card_path(board.id, card.id)
      body = JSON.parse(response.body)

      # Assert
      expect(response).must_be :not_found?
      expect(body["ok"]).must_equal false
      expect(body["cause"]).must_equal "not_found"
    end
  end

  describe "destroy" do
    it "can destroy a card" do
      # Arrange
      card = board.cards.first

      # Act
      delete board_card_path(board.id, card.id)
      body = JSON.parse(response.body)

      # Assert
      expect(response).must_be :successful?
      expect(response.header['Content-Type']).must_include 'json'
      expect(body.keys).must_include "card"
      ["id", "title", "content", "image_url"].each do |field|
        expect(body["card"].keys).must_include field
      end

    end

    it "will alert the user if the card to be deleted does not exist" do
      # Arrange
      card = board.cards.first
      card.destroy

      # Act
      delete board_card_path(board.id, card.id)
      body = JSON.parse(response.body)

      # Assert
      expect(response).must_be :not_found?
      expect(response.header['Content-Type']).must_include 'json'
      expect(body.keys).must_include "cause"
      expect(body["cause"]).must_equal "not_found"
    end

  end

  describe "create" do

    it "should get create" do
      # Arrange
      card = {
        title: "You are totally awesome",
        board_id: board.id
      }

      # Act
      post board_cards_path(board.id), params: card
      body = JSON.parse(response.body)

      value(response).must_be :successful?
      expect(response.header['Content-Type']).must_include 'json'
      expect(body.keys).must_include "card"
      ["id", "title", "content", "image_url"].each do |field|
        expect(body["card"].keys).must_include field
        if (!card[field].nil?)
          expect(body["card"][field]).must_equal card[field.to_sym] if field != "id"
        end
      end
    end

    it "will respond with errors for invalid cards" do
      # Arrange
      card = {
      }

      # Act
      post board_cards_path(board.id), params: card
      body = JSON.parse(response.body)

      value(response).must_be :bad_request?
      expect(response.header['Content-Type']).must_include 'json'
      ["ok", "cause", "errors"].each do |key|
        expect(body.keys).must_include key
      end

      expect(body["ok"]).must_equal false
      expect(body["cause"]).must_equal "validation errors"
      expect(body["errors"].keys).must_include "title"
      expect(body["errors"]["title"]).must_include "can't be blank"
    end
  end

  describe "update" do

    it "can update a card" do

    end

    it "will report if it can't update a card" do

    end
  end

end
