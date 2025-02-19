require "application_system_test_case"

class ResgatesTest < ApplicationSystemTestCase
  setup do
    @resgate = resgates(:one)
  end

  test "visiting the index" do
    visit resgates_url
    assert_selector "h1", text: "Resgates"
  end

  test "should create resgate" do
    visit resgates_url
    click_on "New resgate"

    fill_in "Data resgate", with: @resgate.data_resgate
    fill_in "Pessoa", with: @resgate.pessoa_id
    click_on "Create Resgate"

    assert_text "Resgate was successfully created"
    click_on "Back"
  end

  test "should update Resgate" do
    visit resgate_url(@resgate)
    click_on "Edit this resgate", match: :first

    fill_in "Data resgate", with: @resgate.data_resgate.to_s
    fill_in "Pessoa", with: @resgate.pessoa_id
    click_on "Update Resgate"

    assert_text "Resgate was successfully updated"
    click_on "Back"
  end

  test "should destroy Resgate" do
    visit resgate_url(@resgate)
    click_on "Destroy this resgate", match: :first

    assert_text "Resgate was successfully destroyed"
  end
end
