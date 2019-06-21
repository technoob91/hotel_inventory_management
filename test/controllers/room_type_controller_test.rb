require 'test_helper'

class RoomTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get room_type_index_url
    assert_response :success
  end

  test "should get show" do
    get room_type_show_url
    assert_response :success
  end

  test "should get new" do
    get room_type_new_url
    assert_response :success
  end

end
