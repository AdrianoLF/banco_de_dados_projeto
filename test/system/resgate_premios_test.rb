require "application_system_test_case"

class ResgatePremiosTest < ApplicationSystemTestCase
  setup do
    @resgate_premio = resgate_premios(:one)
  end

  test "visiting the index" do
    visit resgate_premios_url
    assert_selector "h1", text: "Resgate premios"
  end

  test "should create resgate premio" do
    visit resgate_premios_url
    click_on "New resgate premio"

    fill_in "Pontos utilizados", with: @resgate_premio.pontos_utilizados
    fill_in "Premio", with: @resgate_premio.premio_id
    fill_in "Resgate", with: @resgate_premio.resgate_id
    click_on "Create Resgate premio"

    assert_text "Resgate premio was successfully created"
    click_on "Back"
  end

  test "should update Resgate premio" do
    visit resgate_premio_url(@resgate_premio)
    click_on "Edit this resgate premio", match: :first

    fill_in "Pontos utilizados", with: @resgate_premio.pontos_utilizados
    fill_in "Premio", with: @resgate_premio.premio_id
    fill_in "Resgate", with: @resgate_premio.resgate_id
    click_on "Update Resgate premio"

    assert_text "Resgate premio was successfully updated"
    click_on "Back"
  end

  test "should destroy Resgate premio" do
    visit resgate_premio_url(@resgate_premio)
    click_on "Destroy this resgate premio", match: :first

    assert_text "Resgate premio was successfully destroyed"
  end
end
