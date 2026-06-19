require "test_helper"

class AudiobooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audiobook = audiobooks(:one)
  end

  test "should get index" do
    get audiobooks_url
    assert_response :success
  end

  test "should get new" do
    get new_audiobook_url
    assert_response :success
  end

  test "should create audiobook" do
    assert_difference("Audiobook.count") do
      post audiobooks_url, params: { audiobook: { description: @audiobook.description, pro: @audiobook.pro, thumbnail_url: @audiobook.thumbnail_url, title: @audiobook.title, video_url: @audiobook.video_url } }
    end

    assert_redirected_to audiobook_url(Audiobook.last)
  end

  test "should show audiobook" do
    get audiobook_url(@audiobook)
    assert_response :success
  end

  test "should get edit" do
    get edit_audiobook_url(@audiobook)
    assert_response :success
  end

  test "should update audiobook" do
    patch audiobook_url(@audiobook), params: { audiobook: { description: @audiobook.description, pro: @audiobook.pro, thumbnail_url: @audiobook.thumbnail_url, title: @audiobook.title, video_url: @audiobook.video_url } }
    assert_redirected_to audiobook_url(@audiobook)
  end

  test "should destroy audiobook" do
    assert_difference("Audiobook.count", -1) do
      delete audiobook_url(@audiobook)
    end

    assert_redirected_to audiobooks_url
  end
end
