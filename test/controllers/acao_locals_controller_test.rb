require "test_helper"

class AcaoLocalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acao_local = acao_locals(:one)
  end

  test "should get index" do
    get acao_locals_url
    assert_response :success
  end

  test "should get new" do
    get new_acao_local_url
    assert_response :success
  end

  test "should create acao_local" do
    assert_difference("AcaoLocal.count") do
      post acao_locals_url, params: { acao_local: { acao_id: @acao_local.acao_id, disponibilidade: @acao_local.disponibilidade, local_id: @acao_local.local_id } }
    end

    assert_redirected_to acao_local_url(AcaoLocal.last)
  end

  test "should show acao_local" do
    get acao_local_url(@acao_local)
    assert_response :success
  end

  test "should get edit" do
    get edit_acao_local_url(@acao_local)
    assert_response :success
  end

  test "should update acao_local" do
    patch acao_local_url(@acao_local), params: { acao_local: { acao_id: @acao_local.acao_id, disponibilidade: @acao_local.disponibilidade, local_id: @acao_local.local_id } }
    assert_redirected_to acao_local_url(@acao_local)
  end

  test "should destroy acao_local" do
    assert_difference("AcaoLocal.count", -1) do
      delete acao_local_url(@acao_local)
    end

    assert_redirected_to acao_locals_url
  end
end
