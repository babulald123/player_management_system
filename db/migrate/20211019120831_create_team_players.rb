# frozen_string_literal: true

class CreateTeamPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :team_players do |t|
      t.integer :user_id
      t.decimal :player_salary

      t.timestamps
    end
  end
end
