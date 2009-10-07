class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :prepaire_mode
      t.string :rendiment
      t.time :prepaire_time
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
