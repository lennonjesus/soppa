class RenameColumnPrepaireModeToPrepareModeInRecipes < ActiveRecord::Migration
  def self.up
    rename_column :recipes, :prepaire_mode, :prepare_mode
  end

  def self.down
    rename_column :recipes, :prepare_mode, :prepaire_mode
  end
end
