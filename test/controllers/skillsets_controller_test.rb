require 'test_helper'

class SkillsetsControllerTest < ActionController::TestCase
  setup do
    @skillset = skillsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skillsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skillset" do
    assert_difference('Skillset.count') do
      post :create, skillset: { name: @skillset.name }
    end

    assert_redirected_to skillset_path(assigns(:skillset))
  end

  test "should show skillset" do
    get :show, id: @skillset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skillset
    assert_response :success
  end

  test "should update skillset" do
    patch :update, id: @skillset, skillset: { name: @skillset.name }
    assert_redirected_to skillset_path(assigns(:skillset))
  end

  test "should destroy skillset" do
    assert_difference('Skillset.count', -1) do
      delete :destroy, id: @skillset
    end

    assert_redirected_to skillsets_path
  end
end
