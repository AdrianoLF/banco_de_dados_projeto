require "test_helper"

class LocalAcaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @local_acao = local_acaos(:one)
  end

  test "should get index" do
    get local_acaos_url
    assert_response :success
  end

  test "should get new" do
    get new_local_acao_url
    assert_response :success
  end

  test "should create local_acao" do
    assert_difference("LocalAcao.count") do
      post local_acaos_url, params: { local_acao: { endereco: @local_acao.endereco, nome_local: @local_acao.nome_local } }
    end

    assert_redirected_to local_acao_url(LocalAcao.last)
  end

  test "should show local_acao" do
    get local_acao_url(@local_acao)
    assert_response :success
  end

  test "should get edit" do
    get edit_local_acao_url(@local_acao)
    assert_response :success
  end

  test "should update local_acao" do
    patch local_acao_url(@local_acao), params: { local_acao: { endereco: @local_acao.endereco, nome_local: @local_acao.nome_local } }
    assert_redirected_to local_acao_url(@local_acao)
  end

  test "should destroy local_acao" do
    assert_difference("LocalAcao.count", -1) do
      delete local_acao_url(@local_acao)
    end

    assert_redirected_to local_acaos_url
  end
end
