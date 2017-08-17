require 'test_helper'

class AstronomiaControllerTest < ActionController::TestCase
  setup do
    @astronomium = astronomia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:astronomia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create astronomium" do
    assert_difference('Astronomium.count') do
      post :create, astronomium: { Categoria: @astronomium.Categoria, Descripcion: @astronomium.Descripcion, Nombre: @astronomium.Nombre }
    end

    assert_redirected_to astronomium_path(assigns(:astronomium))
  end

  test "should show astronomium" do
    get :show, id: @astronomium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @astronomium
    assert_response :success
  end

  test "should update astronomium" do
    patch :update, id: @astronomium, astronomium: { Categoria: @astronomium.Categoria, Descripcion: @astronomium.Descripcion, Nombre: @astronomium.Nombre }
    assert_redirected_to astronomium_path(assigns(:astronomium))
  end

  test "should destroy astronomium" do
    assert_difference('Astronomium.count', -1) do
      delete :destroy, id: @astronomium
    end

    assert_redirected_to astronomia_path
  end
end
