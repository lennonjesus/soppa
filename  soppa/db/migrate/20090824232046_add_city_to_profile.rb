class AddCityToProfile < ActiveRecord::Migration
  def self.up
    add_column :profiles, :city_id, :integer
  end

  def self.down
    remove_column :profiles, :city_id
  end
end
