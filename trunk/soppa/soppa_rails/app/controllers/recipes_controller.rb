class RecipesController < ApplicationController

  before_filter :login_required, :except => %w[index show]

  # GET /recipes
  # GET /recipes.xml
  def index

    @recipes = []
    @my_recipes = []

    Recipe.all.each do |recipe|
      @recipes << recipe unless recipe.user == current_user
      @my_recipes << recipe if recipe.user == current_user
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recipes }
    end
  end

  # GET /recipes/1
  # GET /recipes/1.xml
  def show
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recipe }
    end
  end

  # GET /recipes/new
  # GET /recipes/new.xml
  def new
    @recipe = Recipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recipe }
    end
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.xml
  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.user = current_user

    respond_to do |format|
      if @recipe.save
        flash[:notice] = 'Recipe was successfully created.'

#        format.html { render :action => "create_step2" }

#        redirect_to "step2"
        format.html { redirect_to(@recipe) }
        format.xml  { render :xml => @recipe, :status => :created, :location => @recipe }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.xml
  def update
    @recipe = Recipe.find(params[:id])

    #Gambi Pattern

    quantities = params[:recipe_item_quantities]
    units = params[:recipe_item_units]

    index = 0

    @recipe.recipe_items.each do |item|
      item.quantity = quantities[index]
      item.unit = Unit.find units[index]

      item.save!

      index = index + 1
    end

    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        flash[:notice] = 'Recipe was successfully updated.'
        format.html { redirect_to(@recipe) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recipe.errors, :status => :unprocessable_entity }
      end
    end
  end

#  def search
#    @recipes = Recipe.find_all_by_name params[:id]
#  end

  # DELETE /recipes/1
  # DELETE /recipes/1.xml
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to(recipes_url) }
      format.xml  { head :ok }
      format.js
    end
  end
end
