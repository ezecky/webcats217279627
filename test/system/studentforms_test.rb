require "application_system_test_case"

class StudentformsTest < ApplicationSystemTestCase
  setup do
    @studentform = studentforms(:one)
  end

  test "visiting the index" do
    visit studentforms_url
    assert_selector "h1", text: "Studentforms"
  end

  test "creating a Studentform" do
    visit studentforms_url
    click_on "New Studentform"

    fill_in "Address", with: @studentform.address
    fill_in "Name", with: @studentform.name
    fill_in "Regno", with: @studentform.regno
    fill_in "Telephone", with: @studentform.telephone
    click_on "Create Studentform"

    assert_text "Studentform was successfully created"
    click_on "Back"
  end

  test "updating a Studentform" do
    visit studentforms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @studentform.address
    fill_in "Name", with: @studentform.name
    fill_in "Regno", with: @studentform.regno
    fill_in "Telephone", with: @studentform.telephone
    click_on "Update Studentform"

    assert_text "Studentform was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentform" do
    visit studentforms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentform was successfully destroyed"
  end
end
