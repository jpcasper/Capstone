class AddCompleteToGames < ActiveRecord::Migration
  def change
    add_column :games, :complete, :boolean, default: false
  end
end
