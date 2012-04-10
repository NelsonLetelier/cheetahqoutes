require 'test_helper'

class HardDrivesControllerTest < ActionController::TestCase
  setup do
    @hard_drife = hard_drives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hard_drives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hard_drife" do
    assert_difference('HardDrive.count') do
      post :create, :hard_drife => { :cache => @hard_drife.cache, :marca => @hard_drife.marca, :rpm => @hard_drife.rpm, :tamano => @hard_drife.tamano }
    end

    assert_redirected_to hard_drife_path(assigns(:hard_drife))
  end

  test "should show hard_drife" do
    get :show, :id => @hard_drife
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hard_drife
    assert_response :success
  end

  test "should update hard_drife" do
    put :update, :id => @hard_drife, :hard_drife => { :cache => @hard_drife.cache, :marca => @hard_drife.marca, :rpm => @hard_drife.rpm, :tamano => @hard_drife.tamano }
    assert_redirected_to hard_drife_path(assigns(:hard_drife))
  end

  test "should destroy hard_drife" do
    assert_difference('HardDrive.count', -1) do
      delete :destroy, :id => @hard_drife
    end

    assert_redirected_to hard_drives_path
  end
end
