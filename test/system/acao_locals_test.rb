require "application_system_test_case"

class AcaoLocalsTest < ApplicationSystemTestCase
  setup do
    @acao_local = acao_locals(:one)
  end

  test "visiting the index" do
    visit acao_locals_url
    assert_selector "h1", text: "Acao locals"
  end

  test "should create acao local" do
    visit acao_locals_url
    click_on "New acao local"

    fill_in "Acao", with: @acao_local.acao_id
    check "Disponibilidade" if @acao_local.disponibilidade
    fill_in "Local", with: @acao_local.local_id
    click_on "Create Acao local"

    assert_text "Acao local was successfully created"
    click_on "Back"
  end

  test "should update Acao local" do
    visit acao_local_url(@acao_local)
    click_on "Edit this acao local", match: :first

    fill_in "Acao", with: @acao_local.acao_id
    check "Disponibilidade" if @acao_local.disponibilidade
    fill_in "Local", with: @acao_local.local_id
    click_on "Update Acao local"

    assert_text "Acao local was successfully updated"
    click_on "Back"
  end

  test "should destroy Acao local" do
    visit acao_local_url(@acao_local)
    click_on "Destroy this acao local", match: :first

    assert_text "Acao local was successfully destroyed"
  end
end
