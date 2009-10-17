class Ingredient < ActiveRecord::Base

  belongs_to :ingredient_type
  has_many :recipe_items

  validates_presence_of :name, :description
  validates_uniqueness_of :name, :case_sensitive => false

end
