require 'test_helper'

class LibraryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get library_index_url
    assert_response :success
  end

  test "should get add" do
    get library_add_url
    assert_response :success
  end

end
