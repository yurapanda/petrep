require 'test_helper'

class PatientTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_type = patient_types(:one)
  end

  test "should get index" do
    get patient_types_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_type_url
    assert_response :success
  end

  test "should create patient_type" do
    assert_difference('PatientType.count') do
      post patient_types_url, params: { patient_type: { name: @patient_type.name } }
    end

    assert_redirected_to patient_type_url(PatientType.last)
  end

  test "should show patient_type" do
    get patient_type_url(@patient_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_type_url(@patient_type)
    assert_response :success
  end

  test "should update patient_type" do
    patch patient_type_url(@patient_type), params: { patient_type: { name: @patient_type.name } }
    assert_redirected_to patient_type_url(@patient_type)
  end

  test "should destroy patient_type" do
    assert_difference('PatientType.count', -1) do
      delete patient_type_url(@patient_type)
    end

    assert_redirected_to patient_types_url
  end
end
