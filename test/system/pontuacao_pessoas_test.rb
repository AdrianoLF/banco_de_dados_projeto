require "application_system_test_case"

class PontuacaoPessoasTest < ApplicationSystemTestCase
  setup do
    @pontuacao_pessoa = pontuacao_pessoas(:one)
  end

  test "visiting the index" do
    visit pontuacao_pessoas_url
    assert_selector "h1", text: "Pontuacao pessoas"
  end

  test "should create pontuacao pessoa" do
    visit pontuacao_pessoas_url
    click_on "New pontuacao pessoa"

    fill_in "Pontuacao total", with: @pontuacao_pessoa.pontuacao_total
    click_on "Create Pontuacao pessoa"

    assert_text "Pontuacao pessoa was successfully created"
    click_on "Back"
  end

  test "should update Pontuacao pessoa" do
    visit pontuacao_pessoa_url(@pontuacao_pessoa)
    click_on "Edit this pontuacao pessoa", match: :first

    fill_in "Pontuacao total", with: @pontuacao_pessoa.pontuacao_total
    click_on "Update Pontuacao pessoa"

    assert_text "Pontuacao pessoa was successfully updated"
    click_on "Back"
  end

  test "should destroy Pontuacao pessoa" do
    visit pontuacao_pessoa_url(@pontuacao_pessoa)
    click_on "Destroy this pontuacao pessoa", match: :first

    assert_text "Pontuacao pessoa was successfully destroyed"
  end
end
