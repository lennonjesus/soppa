class IngredientType < ActiveRecord::Base

  has_many :ingredients

  validates_presence_of :name, :description
  validates_uniqueness_of :name, :case_sensitive => false
end
