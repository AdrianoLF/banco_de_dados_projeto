require "application_system_test_case"

class HistoricoAcaosTest < ApplicationSystemTestCase
  setup do
    @historico_acao = historico_acaos(:one)
  end

  test "visiting the index" do
    visit historico_acaos_url
    assert_selector "h1", text: "Historico acaos"
  end

  test "should create historico acao" do
    visit historico_acaos_url
    click_on "New historico acao"

    fill_in "Acao", with: @historico_acao.acao_id
    fill_in "Pessoa", with: @historico_acao.pessoa_id
    click_on "Create Historico acao"

    assert_text "Historico acao was successfully created"
    click_on "Back"
  end

  test "should update Historico acao" do
    visit historico_acao_url(@historico_acao)
    click_on "Edit this historico acao", match: :first

    fill_in "Acao", with: @historico_acao.acao_id
    fill_in "Pessoa", with: @historico_acao.pessoa_id
    click_on "Update Historico acao"

    assert_text "Historico acao was successfully updated"
    click_on "Back"
  end

  test "should destroy Historico acao" do
    visit historico_acao_url(@historico_acao)
    click_on "Destroy this historico acao", match: :first

    assert_text "Historico acao was successfully destroyed"
  end
end
