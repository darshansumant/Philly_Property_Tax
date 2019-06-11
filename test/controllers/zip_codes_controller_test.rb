require 'test_helper'

class ZipCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zip_code = zip_codes(:one)
  end

  test "should get index" do
    get zip_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_zip_code_url
    assert_response :success
  end

  test "should create zip_code" do
    assert_difference('ZipCode.count') do
      post zip_codes_url, params: { zip_code: { zip_code: @zip_code.zip_code } }
    end

    assert_redirected_to zip_code_url(ZipCode.last)
  end

  test "should show zip_code" do
    get zip_code_url(@zip_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_zip_code_url(@zip_code)
    assert_response :success
  end

  test "should update zip_code" do
    patch zip_code_url(@zip_code), params: { zip_code: { zip_code: @zip_code.zip_code } }
    assert_redirected_to zip_code_url(@zip_code)
  end

  test "should destroy zip_code" do
    assert_difference('ZipCode.count', -1) do
      delete zip_code_url(@zip_code)
    end

    assert_redirected_to zip_codes_url
  end
end
