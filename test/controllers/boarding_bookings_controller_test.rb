require 'test_helper'

class BoardingBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boarding_booking = boarding_bookings(:one)
  end

  test "should get index" do
    get boarding_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_boarding_booking_url
    assert_response :success
  end

  test "should create boarding_booking" do
    assert_difference('BoardingBooking.count') do
      post boarding_bookings_url, params: { boarding_booking: { confirmed: @boarding_booking.confirmed, end_date: @boarding_booking.end_date, patient_id: @boarding_booking.patient_id, start_date: @boarding_booking.start_date } }
    end

    assert_redirected_to boarding_booking_url(BoardingBooking.last)
  end

  test "should show boarding_booking" do
    get boarding_booking_url(@boarding_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_boarding_booking_url(@boarding_booking)
    assert_response :success
  end

  test "should update boarding_booking" do
    patch boarding_booking_url(@boarding_booking), params: { boarding_booking: { confirmed: @boarding_booking.confirmed, end_date: @boarding_booking.end_date, patient_id: @boarding_booking.patient_id, start_date: @boarding_booking.start_date } }
    assert_redirected_to boarding_booking_url(@boarding_booking)
  end

  test "should destroy boarding_booking" do
    assert_difference('BoardingBooking.count', -1) do
      delete boarding_booking_url(@boarding_booking)
    end

    assert_redirected_to boarding_bookings_url
  end
end
