require "test_helper"

class PontuacaoPessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pontuacao_pessoa = pontuacao_pessoas(:one)
  end

  test "should get index" do
    get pontuacao_pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_pontuacao_pessoa_url
    assert_response :success
  end

  test "should create pontuacao_pessoa" do
    assert_difference("PontuacaoPessoa.count") do
      post pontuacao_pessoas_url, params: { pontuacao_pessoa: { pontuacao_total: @pontuacao_pessoa.pontuacao_total } }
    end

    assert_redirected_to pontuacao_pessoa_url(PontuacaoPessoa.last)
  end

  test "should show pontuacao_pessoa" do
    get pontuacao_pessoa_url(@pontuacao_pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pontuacao_pessoa_url(@pontuacao_pessoa)
    assert_response :success
  end

  test "should update pontuacao_pessoa" do
    patch pontuacao_pessoa_url(@pontuacao_pessoa), params: { pontuacao_pessoa: { pontuacao_total: @pontuacao_pessoa.pontuacao_total } }
    assert_redirected_to pontuacao_pessoa_url(@pontuacao_pessoa)
  end

  test "should destroy pontuacao_pessoa" do
    assert_difference("PontuacaoPessoa.count", -1) do
      delete pontuacao_pessoa_url(@pontuacao_pessoa)
    end

    assert_redirected_to pontuacao_pessoas_url
  end
end
