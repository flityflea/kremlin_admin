require 'test_helper'

class ConcertosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concertos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concerto" do
    assert_difference('Concerto.count') do
      post :create, :concerto => { }
    end

    assert_redirected_to concerto_path(assigns(:concerto))
  end

  test "should show concerto" do
    get :show, :id => concertos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => concertos(:one).to_param
    assert_response :success
  end

  test "should update concerto" do
    put :update, :id => concertos(:one).to_param, :concerto => { }
    assert_redirected_to concerto_path(assigns(:concerto))
  end

  test "should destroy concerto" do
    assert_difference('Concerto.count', -1) do
      delete :destroy, :id => concertos(:one).to_param
    end

    assert_redirected_to concertos_path
  end
end
