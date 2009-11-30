class PopulateRecipeTypes < ActiveRecord::Migration
  def self.up
    RecipeType.create :name => "diet", :description => ""
    RecipeType.create :name => "light", :description => ""
    RecipeType.create :name => "vegetariana", :description => ""
    RecipeType.create :name => "microondas", :description => ""

  end
  def self.down
    RecipeType.delete_all
  end
end