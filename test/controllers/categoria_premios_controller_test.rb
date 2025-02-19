require "test_helper"

class CategoriaPremiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoria_premio = categoria_premios(:one)
  end

  test "should get index" do
    get categoria_premios_url
    assert_response :success
  end

  test "should get new" do
    get new_categoria_premio_url
    assert_response :success
  end

  test "should create categoria_premio" do
    assert_difference("CategoriaPremio.count") do
      post categoria_premios_url, params: { categoria_premio: { descricao: @categoria_premio.descricao } }
    end

    assert_redirected_to categoria_premio_url(CategoriaPremio.last)
  end

  test "should show categoria_premio" do
    get categoria_premio_url(@categoria_premio)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoria_premio_url(@categoria_premio)
    assert_response :success
  end

  test "should update categoria_premio" do
    patch categoria_premio_url(@categoria_premio), params: { categoria_premio: { descricao: @categoria_premio.descricao } }
    assert_redirected_to categoria_premio_url(@categoria_premio)
  end

  test "should destroy categoria_premio" do
    assert_difference("CategoriaPremio.count", -1) do
      delete categoria_premio_url(@categoria_premio)
    end

    assert_redirected_to categoria_premios_url
  end
end
