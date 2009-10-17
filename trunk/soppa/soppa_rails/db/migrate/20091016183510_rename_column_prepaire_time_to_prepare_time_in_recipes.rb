class RenameColumnPrepaireTimeToPrepareTimeInRecipes < ActiveRecord::Migration
  def self.up
    rename_column :recipes, :prepaire_time, :prepare_time
  end

  def self.down
    rename_column :recipes, :prepare_time, :prepaire_time
  end
end
