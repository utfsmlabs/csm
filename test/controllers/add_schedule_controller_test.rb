require 'test_helper'

class AddScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get add_schedule_index_url
    assert_response :success
  end

end
