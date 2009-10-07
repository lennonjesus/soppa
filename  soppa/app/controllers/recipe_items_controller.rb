class RecipeItemsController < ApplicationController
  # GET /recipe_items
  # GET /recipe_items.xml
  def index
    @recipe_items = RecipeItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recipe_items }
    end
  end

  # GET /recipe_items/1
  # GET /recipe_items/1.xml
  def show
    @recipe_item = RecipeItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recipe_item }
    end
  end

  # GET /recipe_items/new
  # GET /recipe_items/new.xml
  def new
    @recipe_item = RecipeItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recipe_item }
    end
  end

  # GET /recipe_items/1/edit
  def edit
    @recipe_item = RecipeItem.find(params[:id])
  end

  # POST /recipe_items
  # POST /recipe_items.xml
  def create
    @recipe_item = RecipeItem.new(params[:recipe_item])

    respond_to do |format|
      if @recipe_item.save
        flash[:notice] = 'RecipeItem was successfully created.'
        format.html { redirect_to(@recipe_item) }
        format.xml  { render :xml => @recipe_item, :status => :created, :location => @recipe_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recipe_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_items/1
  # PUT /recipe_items/1.xml
  def update
    @recipe_item = RecipeItem.find(params[:id])

    respond_to do |format|
      if @recipe_item.update_attributes(params[:recipe_item])
        flash[:notice] = 'RecipeItem was successfully updated.'
        format.html { redirect_to(@recipe_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recipe_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_items/1
  # DELETE /recipe_items/1.xml
  def destroy
    @recipe_item = RecipeItem.find(params[:id])
    @recipe_item.destroy

    respond_to do |format|
      format.html { redirect_to(recipe_items_url) }
      format.xml  { head :ok }
    end
  end
end
