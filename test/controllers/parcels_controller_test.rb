require 'test_helper'

class ParcelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parcel = parcels(:one)
  end

  test "should get index" do
    get parcels_url
    assert_response :success
  end

  test "should get new" do
    get new_parcel_url
    assert_response :success
  end

  test "should create parcel" do
    assert_difference('Parcel.count') do
      post parcels_url, params: { parcel: { market_value: @parcel.market_value, parcel_number: @parcel.parcel_number, taxable_building: @parcel.taxable_building, taxable_land: @parcel.taxable_land } }
    end

    assert_redirected_to parcel_url(Parcel.last)
  end

  test "should show parcel" do
    get parcel_url(@parcel)
    assert_response :success
  end

  test "should get edit" do
    get edit_parcel_url(@parcel)
    assert_response :success
  end

  test "should update parcel" do
    patch parcel_url(@parcel), params: { parcel: { market_value: @parcel.market_value, parcel_number: @parcel.parcel_number, taxable_building: @parcel.taxable_building, taxable_land: @parcel.taxable_land } }
    assert_redirected_to parcel_url(@parcel)
  end

  test "should destroy parcel" do
    assert_difference('Parcel.count', -1) do
      delete parcel_url(@parcel)
    end

    assert_redirected_to parcels_url
  end
end
