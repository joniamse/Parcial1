require "application_system_test_case"

class MemberHonorsTest < ApplicationSystemTestCase
  setup do
    @member_honor = member_honors(:one)
  end

  test "visiting the index" do
    visit member_honors_url
    assert_selector "h1", text: "Member Honors"
  end

  test "creating a Member honor" do
    visit member_honors_url
    click_on "New Member Honor"

    click_on "Create Member honor"

    assert_text "Member honor was successfully created"
    click_on "Back"
  end

  test "updating a Member honor" do
    visit member_honors_url
    click_on "Edit", match: :first

    click_on "Update Member honor"

    assert_text "Member honor was successfully updated"
    click_on "Back"
  end

  test "destroying a Member honor" do
    visit member_honors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member honor was successfully destroyed"
  end
end
