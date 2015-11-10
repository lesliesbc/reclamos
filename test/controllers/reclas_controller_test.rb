require 'test_helper'

class ReclasControllerTest < ActionController::TestCase
  setup do
    @recla = reclas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reclas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recla" do
    assert_difference('Recla.count') do
      post :create, recla: { cliente_id: @recla.cliente_id, reclam: @recla.reclam, tienda: @recla.tienda }
    end

    assert_redirected_to recla_path(assigns(:recla))
  end

  test "should show recla" do
    get :show, id: @recla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recla
    assert_response :success
  end

  test "should update recla" do
    patch :update, id: @recla, recla: { cliente_id: @recla.cliente_id, reclam: @recla.reclam, tienda: @recla.tienda }
    assert_redirected_to recla_path(assigns(:recla))
  end

  test "should destroy recla" do
    assert_difference('Recla.count', -1) do
      delete :destroy, id: @recla
    end

    assert_redirected_to reclas_path
  end
end
