require 'test_helper'

class DonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donor = donors(:one)
  end

  test "should get index" do
    get donors_url
    assert_response :success
  end

  test "should get new" do
    get new_donor_url
    assert_response :success
  end

  test "should create donor" do
    assert_difference('Donor.count') do
      post donors_url, params: { donor: {
        donation_amount: @donor.donation_amount,
        email: @donor.email,
        first_name: @donor.first_name,
        last_name: @donor.last_name,
        middle_name: @donor.middle_name,
        phone: @donor.phone,
        project: @donor.project,
        status: @donor.status } }
    end

    assert_redirected_to donor_url(Donor.last)
  end

  test "should show donor" do
    get donor_url(@donor)
    assert_response :success
  end

  test "should get edit" do
    get edit_donor_url(@donor)
    assert_response :success
  end

  test "should update donor" do
    patch donor_url(@donor), params: { donor: {
      donation_ammount: @donor.donation_ammount,
      email: @donor.email,
      first_name: @donor.first_name,
      last_name: @donor.last_name,
      middle_name: @donor.middle_name,
      phone: @donor.phone,
      project: @donor.project,
      status: @donor.status } }
    assert_redirected_to donor_url(@donor)
  end

  test "should destroy donor" do
    assert_difference('Donor.count', -1) do
      delete donor_url(@donor)
    end

    assert_redirected_to donors_url
  end
end