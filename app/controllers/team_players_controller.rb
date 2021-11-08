# frozen_string_literal: true

class TeamPlayersController < ApplicationController
  def index
    @teamplayers = TeamPlayer.all
  end

  def new
    @team_player = TeamPlayer.new(player_id: params[:player_id])
  end

  def create
    @team_player = TeamPlayer.new(team_player_params)
    if @team_player.save
      redirect_to @team_player
    else
      render :new
    end
  end

  def show; end

  def edit
    @team_player = TeamPlayer.find_by_id(params[:id])
  end

  def update
    @teamplayer = TeamPlayer.find(params[:id])
    current_salary = @teamplayer.player_salary
    if @teamplayer.update(salary_params.merge(current_salary: current_salary))
      redirect_to @teamplayer
    else
      render :edit
    end
  end

  def destroy
    @teamplayer = TeamPlayer.find(params[:id])
    @teamplayer.destroy
    redirect_to team_player_path(current_user)
  end

  def search
    @teamplayer = TeamPlayer.search(params[:search])
  end

  private

  def team_player_params
    params.require(:team_player).permit(:player_id, :player_salary).merge(team_id: current_user.id)
  end

  def salary_params
    params.require(:team_player).permit(:player_salary)
  end
end
