#
# Classe responsavel pela logica relacionada aos ingredientes
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class IngredientsController < ApplicationController

  before_filter :login_required, :except => %w[index show]

  # GET /ingredients
  # GET /ingredients.xml
  def index
    @ingredients = Ingredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ingredients }
    end
  end

  # GET /ingredients/1
  # GET /ingredients/1.xml
  def show
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ingredient }
    end
  end

  # GET /ingredients/new
  # GET /ingredients/new.xml
  def new
    @ingredient = Ingredient.new
    @ingredient_type = IngredientType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ingredient }
    end
  end

  # GET /ingredients/1/edit
  def edit
    @ingredient = Ingredient.find(params[:id])
    @ingredient_type = @ingredient.ingredient_type
  end

  # POST /ingredients
  # POST /ingredients.xml
  def create
    @ingredient = Ingredient.new(params[:ingredient])

    respond_to do |format|
      if @ingredient.save
        flash[:notice] = 'Ingredient was successfully created.'
        format.html { redirect_to(@ingredient) }
        format.xml  { render :xml => @ingredient, :status => :created, :location => @ingredient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ingredients/1
  # PUT /ingredients/1.xml
  def update
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      if @ingredient.update_attributes(params[:ingredient])
        flash[:notice] = 'Ingredient was successfully updated.'
        format.html { redirect_to(@ingredient) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.xml
  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    respond_to do |format|
      format.html { redirect_to(ingredients_url) }
      format.xml  { head :ok }
    end
  end

  def search
    query = params[:id]

    @ingredients = Ingredient.name_like_all_or_description_like query

    render :partial => "results"
  end
end
