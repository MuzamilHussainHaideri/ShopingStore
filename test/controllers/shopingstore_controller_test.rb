require 'test_helper'

class ShopingstoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shopingstore_index_url
    assert_response :success
  end

end
