class Recipe < ActiveRecord::Base

  belongs_to :recipe_type
  has_many :recipe_items

end
