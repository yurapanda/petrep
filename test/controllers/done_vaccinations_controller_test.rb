require 'test_helper'

class DoneVaccinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @done_vaccination = done_vaccinations(:one)
  end

  test "should get index" do
    get done_vaccinations_url
    assert_response :success
  end

  test "should get new" do
    get new_done_vaccination_url
    assert_response :success
  end

  test "should create done_vaccination" do
    assert_difference('DoneVaccination.count') do
      post done_vaccinations_url, params: { done_vaccination: { patient_id: @done_vaccination.patient_id, vaccination_id: @done_vaccination.vaccination_id } }
    end

    assert_redirected_to done_vaccination_url(DoneVaccination.last)
  end

  test "should show done_vaccination" do
    get done_vaccination_url(@done_vaccination)
    assert_response :success
  end

  test "should get edit" do
    get edit_done_vaccination_url(@done_vaccination)
    assert_response :success
  end

  test "should update done_vaccination" do
    patch done_vaccination_url(@done_vaccination), params: { done_vaccination: { patient_id: @done_vaccination.patient_id, vaccination_id: @done_vaccination.vaccination_id } }
    assert_redirected_to done_vaccination_url(@done_vaccination)
  end

  test "should destroy done_vaccination" do
    assert_difference('DoneVaccination.count', -1) do
      delete done_vaccination_url(@done_vaccination)
    end

    assert_redirected_to done_vaccinations_url
  end
end
