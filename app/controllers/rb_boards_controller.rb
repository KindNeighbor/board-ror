class RbBoardsController < ApplicationController
  before_action :set_rb_board, only: [:show, :update, :destroy]

  def index
    @rb_boards = RbBoard.all
    render json: @rb_boards
  end

  def show
    render json: @rb_board
  end

  def create
    @rb_board = RbBoard.new(rb_board_params)
    if @rb_board.save
      render json: @rb_board, status: :created, location: @rb_board
    else
      render json: @rb_board.errors, status: :unprocessable_entity
    end
  end

  def update
    if @rb_board.update(rb_board_params)
      render json: @rb_board
    else
      render json: @rb_board.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rb_board.destroy
    head :no_content
  end

  private
  def set_rb_board
    @rb_board = RbBoard.find(params[:id])
    render json: { error: "Not found" }, status: :not_found unless @rb_board
  end

  def rb_board_params
    params.require(:rb_board).permit(:title, :content, :writer)
  end
end
