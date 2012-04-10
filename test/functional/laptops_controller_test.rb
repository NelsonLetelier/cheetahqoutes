require 'test_helper'

class LaptopsControllerTest < ActionController::TestCase
  setup do
    @laptop = laptops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laptops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laptop" do
    assert_difference('Laptop.count') do
      post :create, :laptop => { :marca => @laptop.marca, :modelo => @laptop.modelo, :precio => @laptop.precio }
    end

    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should show laptop" do
    get :show, :id => @laptop
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @laptop
    assert_response :success
  end

  test "should update laptop" do
    put :update, :id => @laptop, :laptop => { :marca => @laptop.marca, :modelo => @laptop.modelo, :precio => @laptop.precio }
    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should destroy laptop" do
    assert_difference('Laptop.count', -1) do
      delete :destroy, :id => @laptop
    end

    assert_redirected_to laptops_path
  end
end
