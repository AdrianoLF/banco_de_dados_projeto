require "application_system_test_case"

class LocalAcaosTest < ApplicationSystemTestCase
  setup do
    @local_acao = local_acaos(:one)
  end

  test "visiting the index" do
    visit local_acaos_url
    assert_selector "h1", text: "Local acaos"
  end

  test "should create local acao" do
    visit local_acaos_url
    click_on "New local acao"

    fill_in "Endereco", with: @local_acao.endereco
    fill_in "Nome local", with: @local_acao.nome_local
    click_on "Create Local acao"

    assert_text "Local acao was successfully created"
    click_on "Back"
  end

  test "should update Local acao" do
    visit local_acao_url(@local_acao)
    click_on "Edit this local acao", match: :first

    fill_in "Endereco", with: @local_acao.endereco
    fill_in "Nome local", with: @local_acao.nome_local
    click_on "Update Local acao"

    assert_text "Local acao was successfully updated"
    click_on "Back"
  end

  test "should destroy Local acao" do
    visit local_acao_url(@local_acao)
    click_on "Destroy this local acao", match: :first

    assert_text "Local acao was successfully destroyed"
  end
end
