#
# Classe que representa um tipo de ingrediente
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class IngredientType < ActiveRecord::Base

  has_many :ingredients

  validates_presence_of :name, :description
  validates_uniqueness_of :name, :case_sensitive => false
end
