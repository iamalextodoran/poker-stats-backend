# frozen_string_literal: true

class GamesController < ApplicationController
  def index
    render json: Game.all, each_serializer: Light::GameSerializer
  end

  def show
    render json: game
  end

  def create
    game = Game.new(fee: game_params[:fee])
    game_params[:players].each { |player| game.participants.new(player_id: player.id) }
    game.save
    render json: game
  end

  def destroy
    game.destroy
    render json: game
  end

  def add_rebuy
    game.participants.new(player_id: game_params[:player_id], rebuy: true)
    game.save

    render json: game
  end

  def make_first_place
    game.update(first_place_id: game_params[:player_id])
    render json: game
  end

  def make_second_place
    game.update(second_place_id: game_params[:player_id])
    render json: game
  end

  protected

  def game_params
    params.permit(:fee, :players, :player_id).to_h
  end

  def game
    @game ||= Game.find(params[:id])
  end
end
