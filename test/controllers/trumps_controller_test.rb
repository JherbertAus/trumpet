require 'test_helper'

class TrumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trump = trumps(:one)
  end

  test "should get index" do
    get trumps_url
    assert_response :success
  end

  test "should get new" do
    get new_trump_url
    assert_response :success
  end

  test "should create trump" do
    assert_difference('Trump.count') do
      post trumps_url, params: { trump: { message: @trump.message, user_id: @trump.user_id } }
    end

    assert_redirected_to trump_url(Trump.last)
  end

  test "should show trump" do
    get trump_url(@trump)
    assert_response :success
  end

  test "should get edit" do
    get edit_trump_url(@trump)
    assert_response :success
  end

  test "should update trump" do
    patch trump_url(@trump), params: { trump: { message: @trump.message, user_id: @trump.user_id } }
    assert_redirected_to trump_url(@trump)
  end

  test "should destroy trump" do
    assert_difference('Trump.count', -1) do
      delete trump_url(@trump)
    end

    assert_redirected_to trumps_url
  end
end
