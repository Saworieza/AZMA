require 'test_helper'

class EvenntsControllerTest < ActionController::TestCase
  setup do
    @evennt = evennts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evennts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evennt" do
    assert_difference('Evennt.count') do
      post :create, evennt: { Date: @evennt.Date, description: @evennt.description, title: @evennt.title }
    end

    assert_redirected_to evennt_path(assigns(:evennt))
  end

  test "should show evennt" do
    get :show, id: @evennt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evennt
    assert_response :success
  end

  test "should update evennt" do
    patch :update, id: @evennt, evennt: { Date: @evennt.Date, description: @evennt.description, title: @evennt.title }
    assert_redirected_to evennt_path(assigns(:evennt))
  end

  test "should destroy evennt" do
    assert_difference('Evennt.count', -1) do
      delete :destroy, id: @evennt
    end

    assert_redirected_to evennts_path
  end
end
