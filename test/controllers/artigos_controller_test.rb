require "test_helper"

class ArtigosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artigos_index_url
    assert_response :success
  end
end
