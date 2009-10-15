class AddUserToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :user_id, :integer
  end

  def self.down
    remove_columns :recipes, :user_id
  end
end
