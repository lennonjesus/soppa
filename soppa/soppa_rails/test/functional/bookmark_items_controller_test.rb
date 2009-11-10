require 'test_helper'

class BookmarkItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookmark_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookmark_item" do
    assert_difference('BookmarkItem.count') do
      post :create, :bookmark_item => { }
    end

    assert_redirected_to bookmark_item_path(assigns(:bookmark_item))
  end

  test "should show bookmark_item" do
    get :show, :id => bookmark_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bookmark_items(:one).to_param
    assert_response :success
  end

  test "should update bookmark_item" do
    put :update, :id => bookmark_items(:one).to_param, :bookmark_item => { }
    assert_redirected_to bookmark_item_path(assigns(:bookmark_item))
  end

  test "should destroy bookmark_item" do
    assert_difference('BookmarkItem.count', -1) do
      delete :destroy, :id => bookmark_items(:one).to_param
    end

    assert_redirected_to bookmark_items_path
  end
end
