require 'test_helper'

class TelefonePessoasControllerTest < ActionController::TestCase
  setup do
    @telefone_pessoa = telefone_pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefone_pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefone_pessoa" do
    assert_difference('TelefonePessoa.count') do
      post :create, telefone_pessoa: { ddd: @telefone_pessoa.ddd, pessoa_id: @telefone_pessoa.pessoa_id, telefone: @telefone_pessoa.telefone }
    end

    assert_redirected_to telefone_pessoa_path(assigns(:telefone_pessoa))
  end

  test "should show telefone_pessoa" do
    get :show, id: @telefone_pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefone_pessoa
    assert_response :success
  end

  test "should update telefone_pessoa" do
    patch :update, id: @telefone_pessoa, telefone_pessoa: { ddd: @telefone_pessoa.ddd, pessoa_id: @telefone_pessoa.pessoa_id, telefone: @telefone_pessoa.telefone }
    assert_redirected_to telefone_pessoa_path(assigns(:telefone_pessoa))
  end

  test "should destroy telefone_pessoa" do
    assert_difference('TelefonePessoa.count', -1) do
      delete :destroy, id: @telefone_pessoa
    end

    assert_redirected_to telefone_pessoas_path
  end
end
