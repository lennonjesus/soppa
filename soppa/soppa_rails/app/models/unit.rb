#
# Classe que representa uma unidade de medida
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class Unit < ActiveRecord::Base
  has_many :recipe_items
end
