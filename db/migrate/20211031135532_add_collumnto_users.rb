# frozen_string_literal: true

class AddCollumntoUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :body, :string
  end
end
