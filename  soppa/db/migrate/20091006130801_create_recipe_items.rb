class CreateRecipeItems < ActiveRecord::Migration
  def self.up
    create_table :recipe_items do |t|
      t.string :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_items
  end
end
