class RecipeItem < ActiveRecord::Base

  belongs_to :recipe
  has_one :ingredient

end
