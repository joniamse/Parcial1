require "application_system_test_case"

class ClubDirectorsTest < ApplicationSystemTestCase
  setup do
    @club_director = club_directors(:one)
  end

  test "visiting the index" do
    visit club_directors_url
    assert_selector "h1", text: "Club Directors"
  end

  test "creating a Club director" do
    visit club_directors_url
    click_on "New Club Director"

    click_on "Create Club director"

    assert_text "Club director was successfully created"
    click_on "Back"
  end

  test "updating a Club director" do
    visit club_directors_url
    click_on "Edit", match: :first

    click_on "Update Club director"

    assert_text "Club director was successfully updated"
    click_on "Back"
  end

  test "destroying a Club director" do
    visit club_directors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Club director was successfully destroyed"
  end
end
