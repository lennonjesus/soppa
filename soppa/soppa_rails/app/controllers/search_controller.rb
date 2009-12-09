#
# Classe responsavel pela logica relacionada as buscas
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class SearchController < ApplicationController

  def all

    query = params[:id]

    @users = User.profile_name_like query
    @recipes = Recipe.name_like_all_or_description_like query
    @ingredients = Ingredient.name_like_all_or_description_like query

    render :partial => "results"

  end

end
