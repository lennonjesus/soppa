#
# Classe responsavel pela logica relacionada pela pagina inicial do sistema
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class HomeController < ApplicationController

# before_filter :login_required #, :except => %w[index show]

  def index
    @friends = current_user.linked_to
    @recipes      = Recipe.all      :limit => 3
    @ingredients  = Ingredient.all  :limit => 3
  end
end
