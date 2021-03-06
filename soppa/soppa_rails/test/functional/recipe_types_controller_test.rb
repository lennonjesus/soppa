require 'test_helper'

class RecipeTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_type" do
    assert_difference('RecipeType.count') do
      post :create, :recipe_type => { }
    end

    assert_redirected_to recipe_type_path(assigns(:recipe_type))
  end

  test "should show recipe_type" do
    get :show, :id => recipe_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => recipe_types(:one).to_param
    assert_response :success
  end

  test "should update recipe_type" do
    put :update, :id => recipe_types(:one).to_param, :recipe_type => { }
    assert_redirected_to recipe_type_path(assigns(:recipe_type))
  end

  test "should destroy recipe_type" do
    assert_difference('RecipeType.count', -1) do
      delete :destroy, :id => recipe_types(:one).to_param
    end

    assert_redirected_to recipe_types_path
  end
end
