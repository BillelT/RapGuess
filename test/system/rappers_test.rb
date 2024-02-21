require "application_system_test_case"

class RappersTest < ApplicationSystemTestCase
  setup do
    @rapper = rappers(:one)
  end

  test "visiting the index" do
    visit rappers_url
    assert_selector "h1", text: "Rappers"
  end

  test "should create rapper" do
    visit rappers_url
    click_on "New rapper"

    fill_in "Image", with: @rapper.image
    fill_in "Name", with: @rapper.name
    click_on "Create Rapper"

    assert_text "Rapper was successfully created"
    click_on "Back"
  end

  test "should update Rapper" do
    visit rapper_url(@rapper)
    click_on "Edit this rapper", match: :first

    fill_in "Image", with: @rapper.image
    fill_in "Name", with: @rapper.name
    click_on "Update Rapper"

    assert_text "Rapper was successfully updated"
    click_on "Back"
  end

  test "should destroy Rapper" do
    visit rapper_url(@rapper)
    click_on "Destroy this rapper", match: :first

    assert_text "Rapper was successfully destroyed"
  end
end
