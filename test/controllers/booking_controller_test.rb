require 'test_helper'

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get book" do
    get booking_book_url
    assert_response :success
  end

end
