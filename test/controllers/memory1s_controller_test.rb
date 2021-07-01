require "test_helper"

class Memory1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memory1 = memory1s(:one)
  end

  test "should get index" do
    get memory1s_url, as: :json
    assert_response :success
  end

  test "should create memory1" do
    assert_difference('Memory1.count') do
      post memory1s_url, params: { memory1: { details: @memory1.details, img: @memory1.img, level: @memory1.level } }, as: :json
    end

    assert_response 201
  end

  test "should show memory1" do
    get memory1_url(@memory1), as: :json
    assert_response :success
  end

  test "should update memory1" do
    patch memory1_url(@memory1), params: { memory1: { details: @memory1.details, img: @memory1.img, level: @memory1.level } }, as: :json
    assert_response 200
  end

  test "should destroy memory1" do
    assert_difference('Memory1.count', -1) do
      delete memory1_url(@memory1), as: :json
    end

    assert_response 204
  end
end
