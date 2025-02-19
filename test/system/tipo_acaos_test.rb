require "application_system_test_case"

class TipoAcaosTest < ApplicationSystemTestCase
  setup do
    @tipo_acao = tipo_acaos(:one)
  end

  test "visiting the index" do
    visit tipo_acaos_url
    assert_selector "h1", text: "Tipo acaos"
  end

  test "should create tipo acao" do
    visit tipo_acaos_url
    click_on "New tipo acao"

    fill_in "Descricao", with: @tipo_acao.descricao
    click_on "Create Tipo acao"

    assert_text "Tipo acao was successfully created"
    click_on "Back"
  end

  test "should update Tipo acao" do
    visit tipo_acao_url(@tipo_acao)
    click_on "Edit this tipo acao", match: :first

    fill_in "Descricao", with: @tipo_acao.descricao
    click_on "Update Tipo acao"

    assert_text "Tipo acao was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo acao" do
    visit tipo_acao_url(@tipo_acao)
    click_on "Destroy this tipo acao", match: :first

    assert_text "Tipo acao was successfully destroyed"
  end
end
