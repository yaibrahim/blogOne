require "test_helper"

class ClearnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clearners_index_url
    assert_response :success
  end
end
