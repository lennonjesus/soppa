#
# Classe que representa um tipo de receita
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class RecipeType < ActiveRecord::Base

  has_many :recipes

  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false

end
