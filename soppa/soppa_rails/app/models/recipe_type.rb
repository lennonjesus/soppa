class RecipeType < ActiveRecord::Base

  has_many :recipes

  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false

end
