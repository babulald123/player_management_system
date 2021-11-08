# frozen_string_literal: true

class Team < User
  has_many :team_players
  has_many :players, through: :team_players
end
