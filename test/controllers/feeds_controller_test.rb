require 'test_helper'

class FeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed = feeds(:one)
  end

  test "should get index" do
    get feeds_url, as: :json
    assert_response :success
  end

  test "should create feed" do
    assert_difference('Feed.count') do
      post feeds_url, params: { feed: { body: @feed.body, hours: @feed.hours, place: @feed.place, price: @feed.price, ref: @feed.ref, title: @feed.title } }, as: :json
    end

    assert_response 201
  end

  test "should show feed" do
    get feed_url(@feed), as: :json
    assert_response :success
  end

  test "should update feed" do
    patch feed_url(@feed), params: { feed: { body: @feed.body, hours: @feed.hours, place: @feed.place, price: @feed.price, ref: @feed.ref, title: @feed.title } }, as: :json
    assert_response 200
  end

  test "should destroy feed" do
    assert_difference('Feed.count', -1) do
      delete feed_url(@feed), as: :json
    end

    assert_response 204
  end
end
