require 'test_helper'

class SecuredControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get secured_index_url
    assert_response :success
  end

end
