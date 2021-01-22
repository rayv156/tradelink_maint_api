require 'test_helper'

class TrailersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trailer = trailers(:one)
  end

  test "should get index" do
    get trailers_url, as: :json
    assert_response :success
  end

  test "should create trailer" do
    assert_difference('Trailer.count') do
      post trailers_url, params: { trailer: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show trailer" do
    get trailer_url(@trailer), as: :json
    assert_response :success
  end

  test "should update trailer" do
    patch trailer_url(@trailer), params: { trailer: {  } }, as: :json
    assert_response 200
  end

  test "should destroy trailer" do
    assert_difference('Trailer.count', -1) do
      delete trailer_url(@trailer), as: :json
    end

    assert_response 204
  end
end
