class Ingredient < ActiveRecord::Base

  has_many :recipe_items
  has_many :recipes, :through => :recipe_items

  has_many :market_items
  has_many :markets, :through => :market_items

  validates_presence_of :name, :description, :ingredient_type
  validates_uniqueness_of :name, :case_sensitive => false

end
