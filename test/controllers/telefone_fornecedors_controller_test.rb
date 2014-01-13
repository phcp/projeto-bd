require 'test_helper'

class TelefoneFornecedorsControllerTest < ActionController::TestCase
  setup do
    @telefone_fornecedor = telefone_fornecedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefone_fornecedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefone_fornecedor" do
    assert_difference('TelefoneFornecedor.count') do
      post :create, telefone_fornecedor: { ddd: @telefone_fornecedor.ddd, fornecedor_id: @telefone_fornecedor.fornecedor_id, telefone: @telefone_fornecedor.telefone }
    end

    assert_redirected_to telefone_fornecedor_path(assigns(:telefone_fornecedor))
  end

  test "should show telefone_fornecedor" do
    get :show, id: @telefone_fornecedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefone_fornecedor
    assert_response :success
  end

  test "should update telefone_fornecedor" do
    patch :update, id: @telefone_fornecedor, telefone_fornecedor: { ddd: @telefone_fornecedor.ddd, fornecedor_id: @telefone_fornecedor.fornecedor_id, telefone: @telefone_fornecedor.telefone }
    assert_redirected_to telefone_fornecedor_path(assigns(:telefone_fornecedor))
  end

  test "should destroy telefone_fornecedor" do
    assert_difference('TelefoneFornecedor.count', -1) do
      delete :destroy, id: @telefone_fornecedor
    end

    assert_redirected_to telefone_fornecedors_path
  end
end
