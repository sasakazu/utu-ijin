require 'test_helper'

class GoodnewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get goodnews_new_url
    assert_response :success
  end

  test "should get index" do
    get goodnews_index_url
    assert_response :success
  end

  test "should get show" do
    get goodnews_show_url
    assert_response :success
  end

  test "should get edit" do
    get goodnews_edit_url
    assert_response :success
  end

end
