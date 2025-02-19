require "application_system_test_case"

class CategoriaPremiosTest < ApplicationSystemTestCase
  setup do
    @categoria_premio = categoria_premios(:one)
  end

  test "visiting the index" do
    visit categoria_premios_url
    assert_selector "h1", text: "Categoria premios"
  end

  test "should create categoria premio" do
    visit categoria_premios_url
    click_on "New categoria premio"

    fill_in "Descricao", with: @categoria_premio.descricao
    click_on "Create Categoria premio"

    assert_text "Categoria premio was successfully created"
    click_on "Back"
  end

  test "should update Categoria premio" do
    visit categoria_premio_url(@categoria_premio)
    click_on "Edit this categoria premio", match: :first

    fill_in "Descricao", with: @categoria_premio.descricao
    click_on "Update Categoria premio"

    assert_text "Categoria premio was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoria premio" do
    visit categoria_premio_url(@categoria_premio)
    click_on "Destroy this categoria premio", match: :first

    assert_text "Categoria premio was successfully destroyed"
  end
end
