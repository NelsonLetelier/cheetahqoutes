require 'test_helper'

class CoresControllerTest < ActionController::TestCase
  setup do
    @core = cores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core" do
    assert_difference('Core.count') do
      post :create, :core => { :frecuencia => @core.frecuencia, :marca => @core.marca, :modelo => @core.modelo, :nombre => @core.nombre, :nucleos => @core.nucleos, :thread => @core.thread }
    end

    assert_redirected_to core_path(assigns(:core))
  end

  test "should show core" do
    get :show, :id => @core
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @core
    assert_response :success
  end

  test "should update core" do
    put :update, :id => @core, :core => { :frecuencia => @core.frecuencia, :marca => @core.marca, :modelo => @core.modelo, :nombre => @core.nombre, :nucleos => @core.nucleos, :thread => @core.thread }
    assert_redirected_to core_path(assigns(:core))
  end

  test "should destroy core" do
    assert_difference('Core.count', -1) do
      delete :destroy, :id => @core
    end

    assert_redirected_to cores_path
  end
end
