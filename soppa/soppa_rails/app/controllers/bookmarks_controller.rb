class BookmarksController < ApplicationController

  before_filter :login_required

  # GET /bookmarks
  # GET /bookmarks.xml
  def index

    @bookmark = Bookmark.find_by_user_id current_user.id
    @bookmark_items = @bookmark.bookmark_items

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bookmarks }
    end
  end

  # GET /bookmarks/new
  # GET /bookmarks/new.xml
  def new
    @recipe = Recipe.find params[:id] #OK!
    bookmark = current_user.bookmark #OK!
    bookmark_items = bookmark.bookmark_items
    item = BookmarkItem.new :recipe => @recipe

    result = bookmark_items.recipe_id_eq item.recipe.id

    bookmark_items << item if result.empty? # verifica se a receita
                                            #ja nao havia sido favoritada

    respond_to do |format|
      format.js  { render :partial => "bookmark_added" }
    end
  end

  
  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.xml
  def destroy

    @recipe = Recipe.find params[:id]

    result = current_user.bookmark.bookmark_items.recipe_id_eq @recipe.id
    
    result.first.delete unless result.empty?
    
    respond_to do |format|
      format.js  { render :partial => "bookmark_removed" }
    end
  end
end
