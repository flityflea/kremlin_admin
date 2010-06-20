require 'test_helper'

class CurtasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curtas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curta" do
    assert_difference('Curta.count') do
      post :create, :curta => { }
    end

    assert_redirected_to curta_path(assigns(:curta))
  end

  test "should show curta" do
    get :show, :id => curtas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => curtas(:one).to_param
    assert_response :success
  end

  test "should update curta" do
    put :update, :id => curtas(:one).to_param, :curta => { }
    assert_redirected_to curta_path(assigns(:curta))
  end

  test "should destroy curta" do
    assert_difference('Curta.count', -1) do
      delete :destroy, :id => curtas(:one).to_param
    end

    assert_redirected_to curtas_path
  end
end
