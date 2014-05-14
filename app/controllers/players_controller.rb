class PlayersController < ApplicationController
  before_action :load_player, only: %i(show update destroy)

  def index
    render json: player_class.all, status: :ok
  end

  def show
    render json: @player, status: :ok
  end

  def create
    player = player_class.new(player_params)
    if player.save
      render json: player, status: :created
    else
      render json: player.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    if @player.update(player_params)
      head :no_content
    else
      render json: @player.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy
    head :no_content
  end

  private

  def load_player
    @player = player_class.find(params[:id])
  end

  def type
    params[:type]
  end

  def player_params
    params.require(type.underscore.to_sym).permit(:name, :club, :batting_average)
  end

  def player_class
    type.constantize
  end
end
