class GamesController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_game (:update, :edit, :destroy)

  def index
  end

  def create
    @game = Game.new(game_params)
    if game.save
      redirect_to @game
    end
  end

  def update
    @game.update(game_params)
    redirect_to @game
  end

  def edit
    @game.destroy
  end


  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :category, :version,
    :user_id, :organizer_id, :event_id)
  end
end
