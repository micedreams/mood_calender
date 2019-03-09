require 'test_helper'

class FeelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feel = feels(:one)
  end

  test "should get index" do
    get feels_url
    assert_response :success
  end

  test "should get new" do
    get new_feel_url
    assert_response :success
  end

  test "should create feel" do
    assert_difference('Feel.count') do
      post feels_url, params: { feel: { date: @feel.date, mood: @feel.mood, note: @feel.note } }
    end

    assert_redirected_to feel_url(Feel.last)
  end

  test "should show feel" do
    get feel_url(@feel)
    assert_response :success
  end

  test "should get edit" do
    get edit_feel_url(@feel)
    assert_response :success
  end

  test "should update feel" do
    patch feel_url(@feel), params: { feel: { date: @feel.date, mood: @feel.mood, note: @feel.note } }
    assert_redirected_to feel_url(@feel)
  end

  test "should destroy feel" do
    assert_difference('Feel.count', -1) do
      delete feel_url(@feel)
    end

    assert_redirected_to feels_url
  end
end
