# frozen_string_literal: true

class AddColumnToTeamPlayers < ActiveRecord::Migration[6.1]
  def change
    remove_column :team_players, :user_id
    add_column :team_players, :team_id, :integer, foreign_key: true
    add_column :team_players, :player_id, :integer, foreign_key: true
  end
end
