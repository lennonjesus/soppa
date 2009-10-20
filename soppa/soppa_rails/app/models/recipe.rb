class Recipe < ActiveRecord::Base

  belongs_to :recipe_type
  has_many :recipe_items
  has_many :comments
  belongs_to :user

  validates_presence_of :name, :description, :prepare_mode


end
