class BookmarkItemsController < ApplicationController
  # GET /bookmark_items
  # GET /bookmark_items.xml
  def index
    @bookmark_items = BookmarkItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bookmark_items }
    end
  end

  # GET /bookmark_items/1
  # GET /bookmark_items/1.xml
  def show
    @bookmark_item = BookmarkItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bookmark_item }
    end
  end

  # GET /bookmark_items/new
  # GET /bookmark_items/new.xml
  def new
    @bookmark_item = BookmarkItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bookmark_item }
    end
  end

  # GET /bookmark_items/1/edit
  def edit
    @bookmark_item = BookmarkItem.find(params[:id])
  end

  # POST /bookmark_items
  # POST /bookmark_items.xml
  def create
    @bookmark_item = BookmarkItem.new(params[:bookmark_item])

    respond_to do |format|
      if @bookmark_item.save
        flash[:notice] = 'BookmarkItem was successfully created.'
        format.html { redirect_to(@bookmark_item) }
        format.xml  { render :xml => @bookmark_item, :status => :created, :location => @bookmark_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bookmark_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bookmark_items/1
  # PUT /bookmark_items/1.xml
  def update
    @bookmark_item = BookmarkItem.find(params[:id])

    respond_to do |format|
      if @bookmark_item.update_attributes(params[:bookmark_item])
        flash[:notice] = 'BookmarkItem was successfully updated.'
        format.html { redirect_to(@bookmark_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bookmark_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmark_items/1
  # DELETE /bookmark_items/1.xml
  def destroy
    @bookmark_item = BookmarkItem.find(params[:id])
    @bookmark_item.destroy

    respond_to do |format|
      format.html { redirect_to(bookmark_items_url) }
      format.xml  { head :ok }
    end
  end
end
