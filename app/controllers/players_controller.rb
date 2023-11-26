class PlayersController < ApplicationController
  def index
    render json: Player.all, each_serializer: Light::PlayerSerializer
  end

  def show
    render json: player
  end

  def create
    player = Player.new(player_params)
    player.save

    render json: player
  end

  def update
    player.update(player_params)
    render json: player
  end

  def destroy
    player.destroy
    render json: player
  end

  protected

  def player_params
    params.permit(:first_name, :last_name).to_h
  end

  def player
    @player ||= Player.find(params[:id])
  end
end
