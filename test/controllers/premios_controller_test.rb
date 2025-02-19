require "test_helper"

class PremiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premio = premios(:one)
  end

  test "should get index" do
    get premios_url
    assert_response :success
  end

  test "should get new" do
    get new_premio_url
    assert_response :success
  end

  test "should create premio" do
    assert_difference("Premio.count") do
      post premios_url, params: { premio: { custo_pontos: @premio.custo_pontos, nome: @premio.nome } }
    end

    assert_redirected_to premio_url(Premio.last)
  end

  test "should show premio" do
    get premio_url(@premio)
    assert_response :success
  end

  test "should get edit" do
    get edit_premio_url(@premio)
    assert_response :success
  end

  test "should update premio" do
    patch premio_url(@premio), params: { premio: { custo_pontos: @premio.custo_pontos, nome: @premio.nome } }
    assert_redirected_to premio_url(@premio)
  end

  test "should destroy premio" do
    assert_difference("Premio.count", -1) do
      delete premio_url(@premio)
    end

    assert_redirected_to premios_url
  end
end
