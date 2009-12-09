#
# Classe responsavel pela logica relacionada as cidades
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class CitiesController < ApplicationController

  def load_cities
    @cities = City.find_all_by_state_id(params[:id])
    render :partial => "cities"
  end

end
