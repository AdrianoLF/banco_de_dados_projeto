require "application_system_test_case"

class PremiosTest < ApplicationSystemTestCase
  setup do
    @premio = premios(:one)
  end

  test "visiting the index" do
    visit premios_url
    assert_selector "h1", text: "Premios"
  end

  test "should create premio" do
    visit premios_url
    click_on "New premio"

    fill_in "Custo pontos", with: @premio.custo_pontos
    fill_in "Nome", with: @premio.nome
    click_on "Create Premio"

    assert_text "Premio was successfully created"
    click_on "Back"
  end

  test "should update Premio" do
    visit premio_url(@premio)
    click_on "Edit this premio", match: :first

    fill_in "Custo pontos", with: @premio.custo_pontos
    fill_in "Nome", with: @premio.nome
    click_on "Update Premio"

    assert_text "Premio was successfully updated"
    click_on "Back"
  end

  test "should destroy Premio" do
    visit premio_url(@premio)
    click_on "Destroy this premio", match: :first

    assert_text "Premio was successfully destroyed"
  end
end
