require "application_system_test_case"

class RegistroAcaosTest < ApplicationSystemTestCase
  setup do
    @registro_acao = registro_acoes(:one)
  end

  test "visiting the index" do
    visit registro_acaos_url
    assert_selector "h1", text: "Registro acaos"
  end

  test "should create registro acao" do
    visit registro_acaos_url
    click_on "New registro acao"

    fill_in "Acao", with: @registro_acao.acao_id
    fill_in "Data execucao", with: @registro_acao.data_execucao
    click_on "Create Registro acao"

    assert_text "Registro acao was successfully created"
    click_on "Back"
  end

  test "should update Registro acao" do
    visit registro_acao_url(@registro_acao)
    click_on "Edit this registro acao", match: :first

    fill_in "Acao", with: @registro_acao.acao_id
    fill_in "Data execucao", with: @registro_acao.data_execucao.to_s
    click_on "Update Registro acao"

    assert_text "Registro acao was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro acao" do
    visit registro_acao_url(@registro_acao)
    click_on "Destroy this registro acao", match: :first

    assert_text "Registro acao was successfully destroyed"
  end
end
