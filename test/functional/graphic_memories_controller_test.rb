require 'test_helper'

class GraphicMemoriesControllerTest < ActionController::TestCase
  setup do
    @graphic_memory = graphic_memories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphic_memories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graphic_memory" do
    assert_difference('GraphicMemory.count') do
      post :create, :graphic_memory => { :capacidad => @graphic_memory.capacidad, :ddr => @graphic_memory.ddr, :marca => @graphic_memory.marca, :modelo => @graphic_memory.modelo }
    end

    assert_redirected_to graphic_memory_path(assigns(:graphic_memory))
  end

  test "should show graphic_memory" do
    get :show, :id => @graphic_memory
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @graphic_memory
    assert_response :success
  end

  test "should update graphic_memory" do
    put :update, :id => @graphic_memory, :graphic_memory => { :capacidad => @graphic_memory.capacidad, :ddr => @graphic_memory.ddr, :marca => @graphic_memory.marca, :modelo => @graphic_memory.modelo }
    assert_redirected_to graphic_memory_path(assigns(:graphic_memory))
  end

  test "should destroy graphic_memory" do
    assert_difference('GraphicMemory.count', -1) do
      delete :destroy, :id => @graphic_memory
    end

    assert_redirected_to graphic_memories_path
  end
end
