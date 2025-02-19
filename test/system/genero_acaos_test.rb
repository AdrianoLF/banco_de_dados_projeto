require "application_system_test_case"

class GeneroAcaosTest < ApplicationSystemTestCase
  setup do
    @genero_acao = genero_acaos(:one)
  end

  test "visiting the index" do
    visit genero_acaos_url
    assert_selector "h1", text: "Genero acaos"
  end

  test "should create genero acao" do
    visit genero_acaos_url
    click_on "New genero acao"

    fill_in "Descricao", with: @genero_acao.descricao
    click_on "Create Genero acao"

    assert_text "Genero acao was successfully created"
    click_on "Back"
  end

  test "should update Genero acao" do
    visit genero_acao_url(@genero_acao)
    click_on "Edit this genero acao", match: :first

    fill_in "Descricao", with: @genero_acao.descricao
    click_on "Update Genero acao"

    assert_text "Genero acao was successfully updated"
    click_on "Back"
  end

  test "should destroy Genero acao" do
    visit genero_acao_url(@genero_acao)
    click_on "Destroy this genero acao", match: :first

    assert_text "Genero acao was successfully destroyed"
  end
end
