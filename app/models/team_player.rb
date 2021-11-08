# frozen_string_literal: true

class TeamPlayer < ApplicationRecord
  after_save :decrease_team_amount
  before_update :update_team_amount
  before_destroy :increase_team_amount

  belongs_to :player
  belongs_to :team

  validates :player_salary, presence: true

  delegate :name, to: :player, prefix: true
  delegate :name, :amount, to: :team, prefix: true

  attr_accessor :current_salary

  private

  def update_team_amount
    team.update(amount: (team.amount + current_salary))
  end

  def decrease_team_amount
    team.update(amount: (team.amount - player_salary))
  end

  def increase_team_amount
    team.update(amount: (team.amount + player_salary))
  end
end
