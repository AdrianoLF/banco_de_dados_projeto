require "application_system_test_case"

class PessoaLocaisTest < ApplicationSystemTestCase
  setup do
    @pessoa_local = pessoas_locais(:one)
  end

  test "visiting the index" do
    visit pessoa_locais_url
    assert_selector "h1", text: "Pessoa locals"
  end

  test "should create pessoa local" do
    visit pessoa_locais_url
    click_on "New pessoa local"

    fill_in "Data visita", with: @pessoa_local.data_visita
    fill_in "Local", with: @pessoa_local.local_id
    fill_in "Pessoa", with: @pessoa_local.pessoa_id
    click_on "Create Pessoa local"

    assert_text "Pessoa local was successfully created"
    click_on "Back"
  end

  test "should update Pessoa local" do
    visit pessoa_local_url(@pessoa_local)
    click_on "Edit this pessoa local", match: :first

    fill_in "Data visita", with: @pessoa_local.data_visita.to_s
    fill_in "Local", with: @pessoa_local.local_id
    fill_in "Pessoa", with: @pessoa_local.pessoa_id
    click_on "Update Pessoa local"

    assert_text "Pessoa local was successfully updated"
    click_on "Back"
  end

  test "should destroy Pessoa local" do
    visit pessoa_local_url(@pessoa_local)
    click_on "Destroy this pessoa local", match: :first

    assert_text "Pessoa local was successfully destroyed"
  end
end
