class SearchController < ApplicationController

  def all

    query = params[:id]

    @users = User.profile_name_like query
    @recipes = Recipe.name_like_all_or_description_like query
    @ingredients = Ingredient.name_like_all_or_description_like query

    render :partial => "results"

  end

end
