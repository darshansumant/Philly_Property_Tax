require "application_system_test_case"

class ZipCodesTest < ApplicationSystemTestCase
  setup do
    @zip_code = zip_codes(:one)
  end

  test "visiting the index" do
    visit zip_codes_url
    assert_selector "h1", text: "Zip Codes"
  end

  test "creating a Zip code" do
    visit zip_codes_url
    click_on "New Zip Code"

    fill_in "Zip code", with: @zip_code.zip_code
    click_on "Create Zip code"

    assert_text "Zip code was successfully created"
    click_on "Back"
  end

  test "updating a Zip code" do
    visit zip_codes_url
    click_on "Edit", match: :first

    fill_in "Zip code", with: @zip_code.zip_code
    click_on "Update Zip code"

    assert_text "Zip code was successfully updated"
    click_on "Back"
  end

  test "destroying a Zip code" do
    visit zip_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zip code was successfully destroyed"
  end
end
