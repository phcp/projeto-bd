require 'test_helper'

class ClienteFisicosControllerTest < ActionController::TestCase
  setup do
    @cliente_fisico = cliente_fisicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_fisicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_fisico" do
    assert_difference('ClienteFisico.count') do
      post :create, cliente_fisico: { cliente_id: @cliente_fisico.cliente_id, cpf: @cliente_fisico.cpf }
    end

    assert_redirected_to cliente_fisico_path(assigns(:cliente_fisico))
  end

  test "should show cliente_fisico" do
    get :show, id: @cliente_fisico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_fisico
    assert_response :success
  end

  test "should update cliente_fisico" do
    patch :update, id: @cliente_fisico, cliente_fisico: { cliente_id: @cliente_fisico.cliente_id, cpf: @cliente_fisico.cpf }
    assert_redirected_to cliente_fisico_path(assigns(:cliente_fisico))
  end

  test "should destroy cliente_fisico" do
    assert_difference('ClienteFisico.count', -1) do
      delete :destroy, id: @cliente_fisico
    end

    assert_redirected_to cliente_fisicos_path
  end
end
