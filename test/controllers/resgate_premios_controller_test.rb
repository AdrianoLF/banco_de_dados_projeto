require "test_helper"

class ResgatePremiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resgate_premio = resgate_premios(:one)
  end

  test "should get index" do
    get resgate_premios_url
    assert_response :success
  end

  test "should get new" do
    get new_resgate_premio_url
    assert_response :success
  end

  test "should create resgate_premio" do
    assert_difference("ResgatePremio.count") do
      post resgate_premios_url, params: { resgate_premio: { pontos_utilizados: @resgate_premio.pontos_utilizados, premio_id: @resgate_premio.premio_id, resgate_id: @resgate_premio.resgate_id } }
    end

    assert_redirected_to resgate_premio_url(ResgatePremio.last)
  end

  test "should show resgate_premio" do
    get resgate_premio_url(@resgate_premio)
    assert_response :success
  end

  test "should get edit" do
    get edit_resgate_premio_url(@resgate_premio)
    assert_response :success
  end

  test "should update resgate_premio" do
    patch resgate_premio_url(@resgate_premio), params: { resgate_premio: { pontos_utilizados: @resgate_premio.pontos_utilizados, premio_id: @resgate_premio.premio_id, resgate_id: @resgate_premio.resgate_id } }
    assert_redirected_to resgate_premio_url(@resgate_premio)
  end

  test "should destroy resgate_premio" do
    assert_difference("ResgatePremio.count", -1) do
      delete resgate_premio_url(@resgate_premio)
    end

    assert_redirected_to resgate_premios_url
  end
end
