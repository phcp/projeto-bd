require 'test_helper'

class ProducaosControllerTest < ActionController::TestCase
  setup do
    @producao = producaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producao" do
    assert_difference('Producao.count') do
      post :create, producao: { data: @producao.data, materiaprima_id: @producao.materiaprima_id, produto_id: @producao.produto_id, quantidade: @producao.quantidade }
    end

    assert_redirected_to producao_path(assigns(:producao))
  end

  test "should show producao" do
    get :show, id: @producao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producao
    assert_response :success
  end

  test "should update producao" do
    patch :update, id: @producao, producao: { data: @producao.data, materiaprima_id: @producao.materiaprima_id, produto_id: @producao.produto_id, quantidade: @producao.quantidade }
    assert_redirected_to producao_path(assigns(:producao))
  end

  test "should destroy producao" do
    assert_difference('Producao.count', -1) do
      delete :destroy, id: @producao
    end

    assert_redirected_to producaos_path
  end
end
