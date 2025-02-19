require "test_helper"

class PremioCategoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premio_categoria = premio_categoria(:one)
  end

  test "should get index" do
    get premio_categoria_url
    assert_response :success
  end

  test "should get new" do
    get new_premio_categoria_url
    assert_response :success
  end

  test "should create premio_categoria" do
    assert_difference("PremioCategorium.count") do
      post premio_categoria_url, params: { premio_categoria: { categoria_premio_id: @premio_categoria.categoria_premio_id, premio_id: @premio_categoria.premio_id } }
    end

    assert_redirected_to premio_categoria_url(PremioCategorium.last)
  end

  test "should show premio_categoria" do
    get premio_categoria_url(@premio_categoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_premio_categoria_url(@premio_categoria)
    assert_response :success
  end

  test "should update premio_categoria" do
    patch premio_categoria_url(@premio_categoria), params: { premio_categoria: { categoria_premio_id: @premio_categoria.categoria_premio_id, premio_id: @premio_categoria.premio_id } }
    assert_redirected_to premio_categoria_url(@premio_categoria)
  end

  test "should destroy premio_categoria" do
    assert_difference("PremioCategorium.count", -1) do
      delete premio_categoria_url(@premio_categoria)
    end

    assert_redirected_to premio_categoria_url
  end
end
