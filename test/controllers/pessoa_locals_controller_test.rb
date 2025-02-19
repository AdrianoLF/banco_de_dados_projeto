require "test_helper"

class PessoaLocaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa_local = pessoas_locais(:one)
  end

  test "should get index" do
    get pessoa_locais_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_local_url
    assert_response :success
  end

  test "should create pessoa_local" do
    assert_difference("PessoaLocal.count") do
      post pessoa_locais_url, params: { pessoa_local: { data_visita: @pessoa_local.data_visita, local_id: @pessoa_local.local_id, pessoa_id: @pessoa_local.pessoa_id } }
    end

    assert_redirected_to pessoa_local_url(PessoaLocal.last)
  end

  test "should show pessoa_local" do
    get pessoa_local_url(@pessoa_local)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_local_url(@pessoa_local)
    assert_response :success
  end

  test "should update pessoa_local" do
    patch pessoa_local_url(@pessoa_local), params: { pessoa_local: { data_visita: @pessoa_local.data_visita, local_id: @pessoa_local.local_id, pessoa_id: @pessoa_local.pessoa_id } }
    assert_redirected_to pessoa_local_url(@pessoa_local)
  end

  test "should destroy pessoa_local" do
    assert_difference("PessoaLocal.count", -1) do
      delete pessoa_local_url(@pessoa_local)
    end

    assert_redirected_to pessoa_locais_url
  end
end
