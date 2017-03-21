require 'test_helper'

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get schedule_view_url
    assert_response :success
  end

end
