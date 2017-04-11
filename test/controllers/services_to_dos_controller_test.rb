require 'test_helper'

class ServicesToDosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @services_to_do = services_to_dos(:one)
  end

  test "should get index" do
    get services_to_dos_url
    assert_response :success
  end

  test "should get new" do
    get new_services_to_do_url
    assert_response :success
  end

  test "should create services_to_do" do
    assert_difference('ServicesToDo.count') do
      post services_to_dos_url, params: { services_to_do: { done: @services_to_do.done, service_id: @services_to_do.service_id } }
    end

    assert_redirected_to services_to_do_url(ServicesToDo.last)
  end

  test "should show services_to_do" do
    get services_to_do_url(@services_to_do)
    assert_response :success
  end

  test "should get edit" do
    get edit_services_to_do_url(@services_to_do)
    assert_response :success
  end

  test "should update services_to_do" do
    patch services_to_do_url(@services_to_do), params: { services_to_do: { done: @services_to_do.done, service_id: @services_to_do.service_id } }
    assert_redirected_to services_to_do_url(@services_to_do)
  end

  test "should destroy services_to_do" do
    assert_difference('ServicesToDo.count', -1) do
      delete services_to_do_url(@services_to_do)
    end

    assert_redirected_to services_to_dos_url
  end
end
