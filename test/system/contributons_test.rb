require "application_system_test_case"

class ContributonsTest < ApplicationSystemTestCase
  setup do
    @contributon = contributons(:one)
  end

  test "visiting the index" do
    visit contributons_url
    assert_selector "h1", text: "Contributons"
  end

  test "creating a Contributon" do
    visit contributons_url
    click_on "New Contributon"

    fill_in "Content", with: @contributon.content
    fill_in "Title", with: @contributon.title
    click_on "Create Contributon"

    assert_text "Contributon was successfully created"
    click_on "Back"
  end

  test "updating a Contributon" do
    visit contributons_url
    click_on "Edit", match: :first

    fill_in "Content", with: @contributon.content
    fill_in "Title", with: @contributon.title
    click_on "Update Contributon"

    assert_text "Contributon was successfully updated"
    click_on "Back"
  end

  test "destroying a Contributon" do
    visit contributons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contributon was successfully destroyed"
  end
end
