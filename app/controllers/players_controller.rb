# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to(@player)
    else
      render :edit
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :avatar, :body)
  end
end
