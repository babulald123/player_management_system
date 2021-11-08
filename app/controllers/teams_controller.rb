# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def show
    @team = Team.find_by_id(params[:id])
  end

  def edit
    @team = Team.find_by_id(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to(@team)
    else
      render :edit
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :avatar, :body, :amount)
  end
end
