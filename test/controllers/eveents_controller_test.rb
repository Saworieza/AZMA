require 'test_helper'

class EveentsControllerTest < ActionController::TestCase
  setup do
    @eveent = eveents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eveents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eveent" do
    assert_difference('Eveent.count') do
      post :create, eveent: { Date: @eveent.Date, description: @eveent.description, title: @eveent.title }
    end

    assert_redirected_to eveent_path(assigns(:eveent))
  end

  test "should show eveent" do
    get :show, id: @eveent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eveent
    assert_response :success
  end

  test "should update eveent" do
    patch :update, id: @eveent, eveent: { Date: @eveent.Date, description: @eveent.description, title: @eveent.title }
    assert_redirected_to eveent_path(assigns(:eveent))
  end

  test "should destroy eveent" do
    assert_difference('Eveent.count', -1) do
      delete :destroy, id: @eveent
    end

    assert_redirected_to eveents_path
  end
end
