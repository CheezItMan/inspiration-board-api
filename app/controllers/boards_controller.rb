class BoardsController < ApplicationController
  def index
    @boards = Board.order(:name)
  end

  def show
    @board = Board.find_by(id: params[:id])

    render json: {ok: false, cause: :not_found}, status: :not_found if @board.nil?
  end

  def update
  end

  def destroy
  end

  def create
    @board = Board.create(board_params)

    if !@board.valid?
      render json: {ok: false, cause: "validation errors", errors: @board.errors}, status: :bad_request
    end
  end

  private
    def board_params
      return params.permit(:name)
    end
end
