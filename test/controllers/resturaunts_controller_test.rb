require 'test_helper'

class ResturauntsControllerTest < ActionController::TestCase
  setup do
    @resturaunt = resturaunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resturaunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resturaunt" do
    assert_difference('Resturaunt.count') do
      post :create, resturaunt: { address: @resturaunt.address, name: @resturaunt.name, phone: @resturaunt.phone, website: @resturaunt.website }
    end

    assert_redirected_to resturaunt_path(assigns(:resturaunt))
  end

  test "should show resturaunt" do
    get :show, id: @resturaunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resturaunt
    assert_response :success
  end

  test "should update resturaunt" do
    patch :update, id: @resturaunt, resturaunt: { address: @resturaunt.address, name: @resturaunt.name, phone: @resturaunt.phone, website: @resturaunt.website }
    assert_redirected_to resturaunt_path(assigns(:resturaunt))
  end

  test "should destroy resturaunt" do
    assert_difference('Resturaunt.count', -1) do
      delete :destroy, id: @resturaunt
    end

    assert_redirected_to resturaunts_path
  end
end
