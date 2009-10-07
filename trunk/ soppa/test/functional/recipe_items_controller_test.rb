require 'test_helper'

class RecipeItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_item" do
    assert_difference('RecipeItem.count') do
      post :create, :recipe_item => { }
    end

    assert_redirected_to recipe_item_path(assigns(:recipe_item))
  end

  test "should show recipe_item" do
    get :show, :id => recipe_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => recipe_items(:one).to_param
    assert_response :success
  end

  test "should update recipe_item" do
    put :update, :id => recipe_items(:one).to_param, :recipe_item => { }
    assert_redirected_to recipe_item_path(assigns(:recipe_item))
  end

  test "should destroy recipe_item" do
    assert_difference('RecipeItem.count', -1) do
      delete :destroy, :id => recipe_items(:one).to_param
    end

    assert_redirected_to recipe_items_path
  end
end
