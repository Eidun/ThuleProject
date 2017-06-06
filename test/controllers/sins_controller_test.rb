require 'test_helper'

class SinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sin = sins(:one)
  end

  test "should get index" do
    get sins_url
    assert_response :success
  end

  test "should get new" do
    get new_sin_url
    assert_response :success
  end

  test "should create sin" do
    assert_difference('Sin.count') do
      post sins_url, params: { sin: { name: @sin.name, reason: @sin.reason } }
    end

    assert_redirected_to sin_url(Sin.last)
  end

  test "should show sin" do
    get sin_url(@sin)
    assert_response :success
  end

  test "should get edit" do
    get edit_sin_url(@sin)
    assert_response :success
  end

  test "should update sin" do
    patch sin_url(@sin), params: { sin: { name: @sin.name, reason: @sin.reason } }
    assert_redirected_to sin_url(@sin)
  end

  test "should destroy sin" do
    assert_difference('Sin.count', -1) do
      delete sin_url(@sin)
    end

    assert_redirected_to sins_url
  end
end
