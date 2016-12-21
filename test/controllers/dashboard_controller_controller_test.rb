require 'test_helper'

class DashboardControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_controller_index_url
    assert_response :success
  end

end
