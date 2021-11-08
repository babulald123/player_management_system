# frozen_string_literal: true

class Player < User
  has_many :team_players
  has_many :teams, through: :team_players

  delegate :avatar, to: :team_players, prefix: true

  def team_player(team_id)
    team_players.find_by_team_id team_id
  end

  def player_salary(team_id)
    team_player(team_id).player_salary
  end

  # def search_data
  #   {
  #     name: name
  #     email: email
  #     team_id: team_id
  #     player_id: player_id
  #     team_players_id: team_players_id
  #   }
  # end
end
