require 'test_helper'

class CompanyLaptopsControllerTest < ActionController::TestCase
  setup do
    @company_laptop = company_laptops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_laptops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_laptop" do
    assert_difference('CompanyLaptop.count') do
      post :create, :company_laptop => { :cantidad => @company_laptop.cantidad, :company_id => @company_laptop.company_id, :laptop_id => @company_laptop.laptop_id }
    end

    assert_redirected_to company_laptop_path(assigns(:company_laptop))
  end

  test "should show company_laptop" do
    get :show, :id => @company_laptop
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @company_laptop
    assert_response :success
  end

  test "should update company_laptop" do
    put :update, :id => @company_laptop, :company_laptop => { :cantidad => @company_laptop.cantidad, :company_id => @company_laptop.company_id, :laptop_id => @company_laptop.laptop_id }
    assert_redirected_to company_laptop_path(assigns(:company_laptop))
  end

  test "should destroy company_laptop" do
    assert_difference('CompanyLaptop.count', -1) do
      delete :destroy, :id => @company_laptop
    end

    assert_redirected_to company_laptops_path
  end
end
