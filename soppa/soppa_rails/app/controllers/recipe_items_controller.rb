#
# Classe responsavel pela logica relacionada aos items de receita
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class RecipeItemsController < ApplicationController

  # DELETE /recipe_items/1
  # DELETE /recipe_items/1.xml
  def destroy
    @recipe_item = RecipeItem.find(params[:id])
    @recipe_item.destroy

    respond_to do |format|
      format.js  { render :partial => "recipe_item_removed" }
    end
  end
end
