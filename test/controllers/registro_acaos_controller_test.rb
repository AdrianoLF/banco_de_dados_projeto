require "test_helper"

class RegistroAcaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_acao = registro_acoes(:one)
  end

  test "should get index" do
    get registro_acaos_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_acao_url
    assert_response :success
  end

  test "should create registro_acao" do
    assert_difference("RegistroAcao.count") do
      post registro_acaos_url, params: { registro_acao: { acao_id: @registro_acao.acao_id, data_execucao: @registro_acao.data_execucao } }
    end

    assert_redirected_to registro_acao_url(RegistroAcao.last)
  end

  test "should show registro_acao" do
    get registro_acao_url(@registro_acao)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_acao_url(@registro_acao)
    assert_response :success
  end

  test "should update registro_acao" do
    patch registro_acao_url(@registro_acao), params: { registro_acao: { acao_id: @registro_acao.acao_id, data_execucao: @registro_acao.data_execucao } }
    assert_redirected_to registro_acao_url(@registro_acao)
  end

  test "should destroy registro_acao" do
    assert_difference("RegistroAcao.count", -1) do
      delete registro_acao_url(@registro_acao)
    end

    assert_redirected_to registro_acaos_url
  end
end
