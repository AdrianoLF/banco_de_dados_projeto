require "test_helper"

class GeneroAcaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genero_acao = genero_acaos(:one)
  end

  test "should get index" do
    get genero_acaos_url
    assert_response :success
  end

  test "should get new" do
    get new_genero_acao_url
    assert_response :success
  end

  test "should create genero_acao" do
    assert_difference("GeneroAcao.count") do
      post genero_acaos_url, params: { genero_acao: { descricao: @genero_acao.descricao } }
    end

    assert_redirected_to genero_acao_url(GeneroAcao.last)
  end

  test "should show genero_acao" do
    get genero_acao_url(@genero_acao)
    assert_response :success
  end

  test "should get edit" do
    get edit_genero_acao_url(@genero_acao)
    assert_response :success
  end

  test "should update genero_acao" do
    patch genero_acao_url(@genero_acao), params: { genero_acao: { descricao: @genero_acao.descricao } }
    assert_redirected_to genero_acao_url(@genero_acao)
  end

  test "should destroy genero_acao" do
    assert_difference("GeneroAcao.count", -1) do
      delete genero_acao_url(@genero_acao)
    end

    assert_redirected_to genero_acaos_url
  end
end
