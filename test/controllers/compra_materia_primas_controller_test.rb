require 'test_helper'

class CompraMateriaPrimasControllerTest < ActionController::TestCase
  setup do
    @compra_materia_prima = compra_materia_primas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compra_materia_primas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compra_materia_prima" do
    assert_difference('CompraMateriaPrima.count') do
      post :create, compra_materia_prima: { data: @compra_materia_prima.data, fornecedor_id: @compra_materia_prima.fornecedor_id, materiaprima_id: @compra_materia_prima.materiaprima_id, pagamento: @compra_materia_prima.pagamento, preco: @compra_materia_prima.preco, quantidade: @compra_materia_prima.quantidade, status: @compra_materia_prima.status }
    end

    assert_redirected_to compra_materia_prima_path(assigns(:compra_materia_prima))
  end

  test "should show compra_materia_prima" do
    get :show, id: @compra_materia_prima
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compra_materia_prima
    assert_response :success
  end

  test "should update compra_materia_prima" do
    patch :update, id: @compra_materia_prima, compra_materia_prima: { data: @compra_materia_prima.data, fornecedor_id: @compra_materia_prima.fornecedor_id, materiaprima_id: @compra_materia_prima.materiaprima_id, pagamento: @compra_materia_prima.pagamento, preco: @compra_materia_prima.preco, quantidade: @compra_materia_prima.quantidade, status: @compra_materia_prima.status }
    assert_redirected_to compra_materia_prima_path(assigns(:compra_materia_prima))
  end

  test "should destroy compra_materia_prima" do
    assert_difference('CompraMateriaPrima.count', -1) do
      delete :destroy, id: @compra_materia_prima
    end

    assert_redirected_to compra_materia_primas_path
  end
end
