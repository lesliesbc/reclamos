require 'test_helper'

class ReclamoTiendasControllerTest < ActionController::TestCase
  setup do
    @reclamo_tienda = reclamo_tiendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reclamo_tiendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reclamo_tienda" do
    assert_difference('ReclamoTienda.count') do
      post :create, reclamo_tienda: { recla_id: @reclamo_tienda.recla_id, tienda_id: @reclamo_tienda.tienda_id }
    end

    assert_redirected_to reclamo_tienda_path(assigns(:reclamo_tienda))
  end

  test "should show reclamo_tienda" do
    get :show, id: @reclamo_tienda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reclamo_tienda
    assert_response :success
  end

  test "should update reclamo_tienda" do
    patch :update, id: @reclamo_tienda, reclamo_tienda: { recla_id: @reclamo_tienda.recla_id, tienda_id: @reclamo_tienda.tienda_id }
    assert_redirected_to reclamo_tienda_path(assigns(:reclamo_tienda))
  end

  test "should destroy reclamo_tienda" do
    assert_difference('ReclamoTienda.count', -1) do
      delete :destroy, id: @reclamo_tienda
    end

    assert_redirected_to reclamo_tiendas_path
  end
end
