class AddRecipeAndIngredientToRecipeItems < ActiveRecord::Migration
  def self.up

    add_column :recipe_items, :recipe_id, :integer
    add_column :recipe_items, :ingredient_id, :integer

  end

  def self.down
    remove_column :recipe_items, :recipe_id
    remove_column :recipe_items, :ingredient_id
  end
end
