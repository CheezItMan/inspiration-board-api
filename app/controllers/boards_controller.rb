class BoardsController < ApplicationController
  def index
    @boards = Board.order(:name)
  end

  def show
    @board = Board.find_by(id: params[:id])

    render json: {ok: false, error: :not_found}, status: :not_found if @board.nil?
  end

  def update
  end

  def destroy
  end

  def create
  end
end
