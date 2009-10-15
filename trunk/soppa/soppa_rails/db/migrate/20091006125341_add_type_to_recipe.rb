class AddTypeToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :recipe_type_id, :integer
  end

  def self.down
    remove_column :recipes, :recipe_type_id
  end
end
