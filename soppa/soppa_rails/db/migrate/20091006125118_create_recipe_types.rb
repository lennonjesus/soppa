class CreateRecipeTypes < ActiveRecord::Migration
  def self.up
    create_table :recipe_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_types
  end
end
