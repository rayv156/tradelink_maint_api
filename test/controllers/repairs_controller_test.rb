require 'test_helper'

class RepairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair = repairs(:one)
  end

  test "should get index" do
    get repairs_url, as: :json
    assert_response :success
  end

  test "should create repair" do
    assert_difference('Repair.count') do
      post repairs_url, params: { repair: { description: @repair.description, pictures: @repair.pictures, repair_type: @repair.repair_type, request_id: @repair.request_id, status: @repair.status } }, as: :json
    end

    assert_response 201
  end

  test "should show repair" do
    get repair_url(@repair), as: :json
    assert_response :success
  end

  test "should update repair" do
    patch repair_url(@repair), params: { repair: { description: @repair.description, pictures: @repair.pictures, repair_type: @repair.repair_type, request_id: @repair.request_id, status: @repair.status } }, as: :json
    assert_response 200
  end

  test "should destroy repair" do
    assert_difference('Repair.count', -1) do
      delete repair_url(@repair), as: :json
    end

    assert_response 204
  end
end
