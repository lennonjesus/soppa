class AddPhotosToIngredients < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :photo_file_name, :string
    add_column :ingredients, :photo_content_type, :string
    add_column :ingredients, :photo_file_size, :integer
  end

  def self.down
    remove_column :ingredients, :photo_file_name
    remove_column :ingredients, :photo_content_type
    remove_column :ingredients, :photo_file_size
  end
end