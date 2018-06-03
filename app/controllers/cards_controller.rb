class CardsController < ApplicationController
  def index
    board = Board.find_by(id: params[:board_id])

    if board
      @cards = board.cards
    else
      render json: {ok: false, cause: :not_found}, status: :not_found
    end
  end

  def show
    @card = Card.find_by(board_id: params[:board_id], id: params[:id])
    render json: {ok: false, cause: :not_found}, status: :not_found if !@card

  end

  def destroy
    @card = Card.find_by(board_id: params[:board_id], id: params[:id])

    if @card
      @card.destroy
    else
      render json: {ok: false, cause: :not_found}, status: :not_found if @board.nil?
    end
  end

  def create
    @card = Card.create(card_params)

    if !@card.valid?
      render json: {ok: false, cause: "validation errors", errors: @card.errors}, status: :bad_request
    end
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.update(card_params)

    if !@card.valid?
      render json: {ok: false, cause: "validation errors", errors: @card.errors}, status: :bad_request
    end
  end

  private
    def card_params
      return params.permit(:title, :content, :image_url, :board_id)
    end
end
