require 'test_helper'

class SubskillsetsControllerTest < ActionController::TestCase
  setup do
    @subskillset = subskillsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subskillsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subskillset" do
    assert_difference('Subskillset.count') do
      post :create, subskillset: { name: @subskillset.name }
    end

    assert_redirected_to subskillset_path(assigns(:subskillset))
  end

  test "should show subskillset" do
    get :show, id: @subskillset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subskillset
    assert_response :success
  end

  test "should update subskillset" do
    patch :update, id: @subskillset, subskillset: { name: @subskillset.name }
    assert_redirected_to subskillset_path(assigns(:subskillset))
  end

  test "should destroy subskillset" do
    assert_difference('Subskillset.count', -1) do
      delete :destroy, id: @subskillset
    end

    assert_redirected_to subskillsets_path
  end
end
