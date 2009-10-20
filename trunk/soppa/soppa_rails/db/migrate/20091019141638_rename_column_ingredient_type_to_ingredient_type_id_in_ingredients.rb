class RenameColumnIngredientTypeToIngredientTypeIdInIngredients < ActiveRecord::Migration
  def self.up
    rename_column :ingredients, :ingredient_type, :ingredient_type_id
  end

  def self.down
    rename_column :ingredients, :ingredient_type_id, :ingredient_type
  end
end
