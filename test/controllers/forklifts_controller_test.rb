require 'test_helper'

class ForkliftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forklift = forklifts(:one)
  end

  test "should get index" do
    get forklifts_url, as: :json
    assert_response :success
  end

  test "should create forklift" do
    assert_difference('Forklift.count') do
      post forklifts_url, params: { forklift: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show forklift" do
    get forklift_url(@forklift), as: :json
    assert_response :success
  end

  test "should update forklift" do
    patch forklift_url(@forklift), params: { forklift: {  } }, as: :json
    assert_response 200
  end

  test "should destroy forklift" do
    assert_difference('Forklift.count', -1) do
      delete forklift_url(@forklift), as: :json
    end

    assert_response 204
  end
end
