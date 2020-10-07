require "application_system_test_case"

class DependentsTest < ApplicationSystemTestCase
  setup do
    @dependent = dependents(:one)
  end

  test "visiting the index" do
    visit dependents_url
    assert_selector "h1", text: "Dependents"
  end

  test "creating a Dependent" do
    visit dependents_url
    click_on "New Dependent"

    fill_in "D blood group", with: @dependent.d_blood_group
    fill_in "D contact", with: @dependent.d_contact
    fill_in "D date of birth", with: @dependent.d_date_of_birth
    fill_in "D email", with: @dependent.d_email
    fill_in "D name", with: @dependent.d_name
    fill_in "Height", with: @dependent.height
    fill_in "Relationship", with: @dependent.relationship
    fill_in "User", with: @dependent.user_id
    fill_in "Weight", with: @dependent.weight
    click_on "Create Dependent"

    assert_text "Dependent was successfully created"
    click_on "Back"
  end

  test "updating a Dependent" do
    visit dependents_url
    click_on "Edit", match: :first

    fill_in "D blood group", with: @dependent.d_blood_group
    fill_in "D contact", with: @dependent.d_contact
    fill_in "D date of birth", with: @dependent.d_date_of_birth
    fill_in "D email", with: @dependent.d_email
    fill_in "D name", with: @dependent.d_name
    fill_in "Height", with: @dependent.height
    fill_in "Relationship", with: @dependent.relationship
    fill_in "User", with: @dependent.user_id
    fill_in "Weight", with: @dependent.weight
    click_on "Update Dependent"

    assert_text "Dependent was successfully updated"
    click_on "Back"
  end

  test "destroying a Dependent" do
    visit dependents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dependent was successfully destroyed"
  end
end
