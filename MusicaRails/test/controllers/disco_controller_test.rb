require 'test_helper'

class DiscoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
