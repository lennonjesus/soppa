class Ingredient < ActiveRecord::Base

  has_many :recipe_items
  has_many :recipes, :through => :recipe_items

  has_many :market_items
  has_many :markets, :through => :market_items

  has_many :market_items
  has_many :markets, :through => :market_items

  belongs_to :ingredient_type
  
  has_attached_file :photo,
                  :styles => {
                    :thumb=> "100x100#",
                    :small  => "150x150>",
                    :medium => "300x300>",
                    :large =>   "400x400>"
                  }

  validates_presence_of :name, :description, :ingredient_type
  validates_uniqueness_of :name, :case_sensitive => false

end
