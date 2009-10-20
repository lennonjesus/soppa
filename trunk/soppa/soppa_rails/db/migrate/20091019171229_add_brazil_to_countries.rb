class AddBrazilToCountries < ActiveRecord::Migration
  def self.up
    Country.create :name => "Brasil"
  end

  def self.down
    country = Country.find_by_name "Brasil"
    country.destroy
  end
end
