class CitiesController < ApplicationController

  def load_cities
    @cities = City.find_all_by_state_id(params[:id])
    render :partial => "cities"
  end

end
