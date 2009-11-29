class FriendsController < ApplicationController
  
  def index

    @friends = current_user.linked_to

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @profiles }
    end
  end

  def add_friend
    friend = User.find params[:id] #OK!
    user = current_user

    result = user.linked_to.rindex friend

    user.linked_to << friend if result == nil


    respond_to do |format|
      format.js  { render :partial => "friend_added" }
    end
  end

  def remove_friend
    friend = User.find params[:id] #OK!
    user = current_user

#    result = user.linked_to.rindex friend

    user.linked_to.delete friend


    respond_to do |format|
      format.js  { render :partial => "friend_removed" }
    end
  end

end
