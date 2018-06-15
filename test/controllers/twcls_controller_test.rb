require 'test_helper'

class TwclsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twcls_index_url
    assert_response :success
  end

end
