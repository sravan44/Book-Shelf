require 'test_helper'

class BookselvesControllerTest < ActionController::TestCase
  setup do
    @bookself = bookselves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookselves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookself" do
    assert_difference('Bookself.count') do
      post :create, bookself: { author: @bookself.author, name: @bookself.name, price: @bookself.price }
    end

    assert_redirected_to bookself_path(assigns(:bookself))
  end

  test "should show bookself" do
    get :show, id: @bookself
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookself
    assert_response :success
  end

  test "should update bookself" do
    put :update, id: @bookself, bookself: { author: @bookself.author, name: @bookself.name, price: @bookself.price }
    assert_redirected_to bookself_path(assigns(:bookself))
  end

  test "should destroy bookself" do
    assert_difference('Bookself.count', -1) do
      delete :destroy, id: @bookself
    end

    assert_redirected_to bookselves_path
  end
end
