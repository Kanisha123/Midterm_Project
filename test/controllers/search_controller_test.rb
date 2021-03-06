require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_index_url
    assert_response :success
  end

  test "should get result" do
    get search_result_url
    assert_response :success
  end

  test "should get treeResult" do
    get search_treeResult_url
    assert_response :success
  end

end
