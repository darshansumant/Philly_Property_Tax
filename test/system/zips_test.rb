require "application_system_test_case"

class ZipsTest < ApplicationSystemTestCase
  setup do
    @zip = zips(:one)
  end

  test "visiting the index" do
    visit zips_url
    assert_selector "h1", text: "Zips"
  end

  test "creating a Zip" do
    visit zips_url
    click_on "New Zip"

    fill_in "Code", with: @zip.code
    fill_in "Description", with: @zip.description
    click_on "Create Zip"

    assert_text "Zip was successfully created"
    click_on "Back"
  end

  test "updating a Zip" do
    visit zips_url
    click_on "Edit", match: :first

    fill_in "Code", with: @zip.code
    fill_in "Description", with: @zip.description
    click_on "Update Zip"

    assert_text "Zip was successfully updated"
    click_on "Back"
  end

  test "destroying a Zip" do
    visit zips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zip was successfully destroyed"
  end
end
