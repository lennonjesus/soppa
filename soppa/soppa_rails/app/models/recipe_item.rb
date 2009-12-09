#
# Classe que representa um item de receita
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class RecipeItem < ActiveRecord::Base

  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :unit

end
