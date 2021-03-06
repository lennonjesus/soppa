#
# Classe responsavel pela logica relacionada aos tipos de ingredientes do sistemas
# Autores:  Lennon Jesus - lennon.jesus@gmail.com
#           Michel de Carli - micheldecarli@gmail.com
#           Wesley Monteiro - wygres@gmail.com
#
class IngredientTypesController < ApplicationController

  before_filter :login_required, :except => %w[index show]

  # GET /ingredient_types
  # GET /ingredient_types.xml
  def index
    @ingredient_types = IngredientType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ingredient_types }
    end
  end

  # GET /ingredient_types/1
  # GET /ingredient_types/1.xml
  def show
    @ingredient_type = IngredientType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ingredient_type }
    end
  end

  # GET /ingredient_types/new
  # GET /ingredient_types/new.xml
  def new
    @ingredient_type = IngredientType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ingredient_type }
    end
  end

  # GET /ingredient_types/1/edit
  def edit
    @ingredient_type = IngredientType.find(params[:id])
  end

  # POST /ingredient_types
  # POST /ingredient_types.xml
  def create
    @ingredient_type = IngredientType.new(params[:ingredient_type])

    respond_to do |format|
      if @ingredient_type.save
        flash[:notice] = 'IngredientType was successfully created.'
        format.html { redirect_to(@ingredient_type) }
        format.xml  { render :xml => @ingredient_type, :status => :created, :location => @ingredient_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ingredient_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ingredient_types/1
  # PUT /ingredient_types/1.xml
  def update
    @ingredient_type = IngredientType.find(params[:id])

    respond_to do |format|
      if @ingredient_type.update_attributes(params[:ingredient_type])
        flash[:notice] = 'IngredientType was successfully updated.'
        format.html { redirect_to(@ingredient_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ingredient_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_types/1
  # DELETE /ingredient_types/1.xml
  def destroy
    @ingredient_type = IngredientType.find(params[:id])
    @ingredient_type.destroy

    respond_to do |format|
      format.html { redirect_to(ingredient_types_url) }
      format.xml  { head :ok }
    end
  end
end
