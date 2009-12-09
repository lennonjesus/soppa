#
# Classe que representa uma receita no sistema
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class Recipe < ActiveRecord::Base

  has_many :recipe_items
  has_many :ingredients, :through => :recipe_items
  belongs_to :recipe_type
  has_many :comments
  belongs_to :user
  has_many :bookmark_items

  has_attached_file :photo,
                  :styles => {
                    :thumb=> "100x100#",
                    :small  => "150x150>",
                    :medium => "300x300>",
                    :large =>   "400x400>"
                  }

  validates_presence_of :name, :description, :prepare_mode


end
