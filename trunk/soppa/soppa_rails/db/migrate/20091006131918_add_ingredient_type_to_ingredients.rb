class AddIngredientTypeToIngredients < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :ingredient_type, :integer
  end

  def self.down
    remove_column :ingredients, :ingredient_type
  end
end
