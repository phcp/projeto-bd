require 'test_helper'

class SolicitacaosControllerTest < ActionController::TestCase
  setup do
    @solicitacao = solicitacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitacao" do
    assert_difference('Solicitacao.count') do
      post :create, solicitacao: { cliente_id: @solicitacao.cliente_id, data: @solicitacao.data, desconto: @solicitacao.desconto, pagamento: @solicitacao.pagamento, pessoa_id: @solicitacao.pessoa_id, produto_id: @solicitacao.produto_id, status: @solicitacao.status }
    end

    assert_redirected_to solicitacao_path(assigns(:solicitacao))
  end

  test "should show solicitacao" do
    get :show, id: @solicitacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitacao
    assert_response :success
  end

  test "should update solicitacao" do
    patch :update, id: @solicitacao, solicitacao: { cliente_id: @solicitacao.cliente_id, data: @solicitacao.data, desconto: @solicitacao.desconto, pagamento: @solicitacao.pagamento, pessoa_id: @solicitacao.pessoa_id, produto_id: @solicitacao.produto_id, status: @solicitacao.status }
    assert_redirected_to solicitacao_path(assigns(:solicitacao))
  end

  test "should destroy solicitacao" do
    assert_difference('Solicitacao.count', -1) do
      delete :destroy, id: @solicitacao
    end

    assert_redirected_to solicitacaos_path
  end
end
