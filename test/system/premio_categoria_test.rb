require "application_system_test_case"

class PremioCategoriaTest < ApplicationSystemTestCase
  setup do
    @premio_categoria = premio_categoria(:one)
  end

  test "visiting the index" do
    visit premio_categoria_url
    assert_selector "h1", text: "Premio categoria"
  end

  test "should create premio categoria" do
    visit premio_categoria_url
    click_on "New premio categoria"

    fill_in "Categoria premio", with: @premio_categoria.categoria_premio_id
    fill_in "Premio", with: @premio_categoria.premio_id
    click_on "Create Premio categoria"

    assert_text "Premio categoria was successfully created"
    click_on "Back"
  end

  test "should update Premio categoria" do
    visit premio_categoria_url(@premio_categoria)
    click_on "Edit this premio categoria", match: :first

    fill_in "Categoria premio", with: @premio_categoria.categoria_premio_id
    fill_in "Premio", with: @premio_categoria.premio_id
    click_on "Update Premio categoria"

    assert_text "Premio categoria was successfully updated"
    click_on "Back"
  end

  test "should destroy Premio categoria" do
    visit premio_categoria_url(@premio_categoria)
    click_on "Destroy this premio categoria", match: :first

    assert_text "Premio categoria was successfully destroyed"
  end
end
