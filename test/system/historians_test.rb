require "application_system_test_case"

class HistoriansTest < ApplicationSystemTestCase
  setup do
    @historian = historians(:one)
  end

  test "visiting the index" do
    visit historians_url
    assert_selector "h1", text: "Historians"
  end

  test "creating a Historian" do
    visit historians_url
    click_on "New Historian"

    fill_in "Bibliography", with: @historian.bibliography
    fill_in "Date born", with: @historian.date_born
    fill_in "Date died", with: @historian.date_died
    fill_in "Gender", with: @historian.gender
    fill_in "Historian", with: @historian.historian_id
    fill_in "Home country", with: @historian.home_country
    fill_in "Name", with: @historian.name
    fill_in "Notes", with: @historian.notes
    fill_in "Other names", with: @historian.other_names
    fill_in "Overview", with: @historian.overview
    fill_in "Path", with: @historian.path
    fill_in "Place born", with: @historian.place_born
    fill_in "Place died", with: @historian.place_died
    fill_in "Sources", with: @historian.sources
    fill_in "Subject area", with: @historian.subject_area
    click_on "Create Historian"

    assert_text "Historian was successfully created"
    click_on "Back"
  end

  test "updating a Historian" do
    visit historians_url
    click_on "Edit", match: :first

    fill_in "Bibliography", with: @historian.bibliography
    fill_in "Date born", with: @historian.date_born
    fill_in "Date died", with: @historian.date_died
    fill_in "Gender", with: @historian.gender
    fill_in "Historian", with: @historian.historian_id
    fill_in "Home country", with: @historian.home_country
    fill_in "Name", with: @historian.name
    fill_in "Notes", with: @historian.notes
    fill_in "Other names", with: @historian.other_names
    fill_in "Overview", with: @historian.overview
    fill_in "Path", with: @historian.path
    fill_in "Place born", with: @historian.place_born
    fill_in "Place died", with: @historian.place_died
    fill_in "Sources", with: @historian.sources
    fill_in "Subject area", with: @historian.subject_area
    click_on "Update Historian"

    assert_text "Historian was successfully updated"
    click_on "Back"
  end

  test "destroying a Historian" do
    visit historians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historian was successfully destroyed"
  end
end
