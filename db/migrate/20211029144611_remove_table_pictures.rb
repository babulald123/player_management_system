# frozen_string_literal: true

class RemoveTablePictures < ActiveRecord::Migration[6.1]
  def change
    drop_table :pictures
  end
end
