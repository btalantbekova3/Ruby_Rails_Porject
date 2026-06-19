require "application_system_test_case"

class AudiobooksTest < ApplicationSystemTestCase
  setup do
    @audiobook = audiobooks(:one)
  end

  test "visiting the index" do
    visit audiobooks_url
    assert_selector "h1", text: "Audiobooks"
  end

  test "should create audiobook" do
    visit audiobooks_url
    click_on "New audiobook"

    fill_in "Description", with: @audiobook.description
    check "Pro" if @audiobook.pro
    fill_in "Thumbnail url", with: @audiobook.thumbnail_url
    fill_in "Title", with: @audiobook.title
    fill_in "Video url", with: @audiobook.video_url
    click_on "Create Audiobook"

    assert_text "Audiobook was successfully created"
    click_on "Back"
  end

  test "should update Audiobook" do
    visit audiobook_url(@audiobook)
    click_on "Edit this audiobook", match: :first

    fill_in "Description", with: @audiobook.description
    check "Pro" if @audiobook.pro
    fill_in "Thumbnail url", with: @audiobook.thumbnail_url
    fill_in "Title", with: @audiobook.title
    fill_in "Video url", with: @audiobook.video_url
    click_on "Update Audiobook"

    assert_text "Audiobook was successfully updated"
    click_on "Back"
  end

  test "should destroy Audiobook" do
    visit audiobook_url(@audiobook)
    click_on "Destroy this audiobook", match: :first

    assert_text "Audiobook was successfully destroyed"
  end
end
