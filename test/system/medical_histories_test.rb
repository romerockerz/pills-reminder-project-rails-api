require "application_system_test_case"

class MedicalHistoriesTest < ApplicationSystemTestCase
  setup do
    @medical_history = medical_histories(:one)
  end

  test "visiting the index" do
    visit medical_histories_url
    assert_selector "h1", text: "Medical Histories"
  end

  test "creating a Medical history" do
    visit medical_histories_url
    click_on "New Medical History"

    fill_in "Dependent", with: @medical_history.dependent_id
    fill_in "Dosage amount", with: @medical_history.dosage_amount
    fill_in "Dosage frequency", with: @medical_history.dosage_frequency
    fill_in "Dosage time", with: @medical_history.dosage_time
    fill_in "Drname", with: @medical_history.drname
    check "Email notify" if @medical_history.email_notify
    fill_in "Enddate", with: @medical_history.enddate
    fill_in "Illness", with: @medical_history.illness
    fill_in "Medicine", with: @medical_history.medicine
    fill_in "Startdate", with: @medical_history.startdate
    fill_in "User", with: @medical_history.user_id
    click_on "Create Medical history"

    assert_text "Medical history was successfully created"
    click_on "Back"
  end

  test "updating a Medical history" do
    visit medical_histories_url
    click_on "Edit", match: :first

    fill_in "Dependent", with: @medical_history.dependent_id
    fill_in "Dosage amount", with: @medical_history.dosage_amount
    fill_in "Dosage frequency", with: @medical_history.dosage_frequency
    fill_in "Dosage time", with: @medical_history.dosage_time
    fill_in "Drname", with: @medical_history.drname
    check "Email notify" if @medical_history.email_notify
    fill_in "Enddate", with: @medical_history.enddate
    fill_in "Illness", with: @medical_history.illness
    fill_in "Medicine", with: @medical_history.medicine
    fill_in "Startdate", with: @medical_history.startdate
    fill_in "User", with: @medical_history.user_id
    click_on "Update Medical history"

    assert_text "Medical history was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical history" do
    visit medical_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical history was successfully destroyed"
  end
end
