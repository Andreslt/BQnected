require 'test_helper'

class AlertaControllerTest < ActionController::TestCase
  setup do
    @alertum = alerta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alerta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alertum" do
    assert_difference('Alerta.count') do
      post :create, alertum: { contenido: @alertum.contenido, id: @alertum.id, nombre: @alertum.nombre, tipo: @alertum.tipo }
    end

    assert_redirected_to alertum_path(assigns(:alertum))
  end

  test "should show alertum" do
    get :show, id: @alertum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alertum
    assert_response :success
  end

  test "should update alertum" do
    put :update, id: @alertum, alertum: { contenido: @alertum.contenido, id: @alertum.id, nombre: @alertum.nombre, tipo: @alertum.tipo }
    assert_redirected_to alertum_path(assigns(:alertum))
  end

  test "should destroy alertum" do
    assert_difference('Alerta.count', -1) do
      delete :destroy, id: @alertum
    end

    assert_redirected_to alerta_index_path
  end
end
