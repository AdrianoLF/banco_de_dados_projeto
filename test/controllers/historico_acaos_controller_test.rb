require "test_helper"

class HistoricoAcaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historico_acao = historico_acaos(:one)
  end

  test "should get index" do
    get historico_acaos_url
    assert_response :success
  end

  test "should get new" do
    get new_historico_acao_url
    assert_response :success
  end

  test "should create historico_acao" do
    assert_difference("HistoricoAcao.count") do
      post historico_acaos_url, params: { historico_acao: { acao_id: @historico_acao.acao_id, pessoa_id: @historico_acao.pessoa_id } }
    end

    assert_redirected_to historico_acao_url(HistoricoAcao.last)
  end

  test "should show historico_acao" do
    get historico_acao_url(@historico_acao)
    assert_response :success
  end

  test "should get edit" do
    get edit_historico_acao_url(@historico_acao)
    assert_response :success
  end

  test "should update historico_acao" do
    patch historico_acao_url(@historico_acao), params: { historico_acao: { acao_id: @historico_acao.acao_id, pessoa_id: @historico_acao.pessoa_id } }
    assert_redirected_to historico_acao_url(@historico_acao)
  end

  test "should destroy historico_acao" do
    assert_difference("HistoricoAcao.count", -1) do
      delete historico_acao_url(@historico_acao)
    end

    assert_redirected_to historico_acaos_url
  end
end
