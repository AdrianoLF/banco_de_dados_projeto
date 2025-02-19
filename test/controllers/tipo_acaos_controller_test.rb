require "test_helper"

class TipoAcaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_acao = tipo_acaos(:one)
  end

  test "should get index" do
    get tipo_acaos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_acao_url
    assert_response :success
  end

  test "should create tipo_acao" do
    assert_difference("TipoAcao.count") do
      post tipo_acaos_url, params: { tipo_acao: { descricao: @tipo_acao.descricao } }
    end

    assert_redirected_to tipo_acao_url(TipoAcao.last)
  end

  test "should show tipo_acao" do
    get tipo_acao_url(@tipo_acao)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_acao_url(@tipo_acao)
    assert_response :success
  end

  test "should update tipo_acao" do
    patch tipo_acao_url(@tipo_acao), params: { tipo_acao: { descricao: @tipo_acao.descricao } }
    assert_redirected_to tipo_acao_url(@tipo_acao)
  end

  test "should destroy tipo_acao" do
    assert_difference("TipoAcao.count", -1) do
      delete tipo_acao_url(@tipo_acao)
    end

    assert_redirected_to tipo_acaos_url
  end
end
