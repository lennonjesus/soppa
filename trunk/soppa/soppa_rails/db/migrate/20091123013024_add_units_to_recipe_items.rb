class AddUnitsToRecipeItems < ActiveRecord::Migration
  def self.up
    add_column :recipe_items, :unit_id, :integer
  end

  def self.down
    remove_column :recipe_items, :unit_id
  end
end
