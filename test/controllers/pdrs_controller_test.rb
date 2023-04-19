require "test_helper"

class PdrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pdr = pdrs(:one)
  end

  test "should get index" do
    get pdrs_url
    assert_response :success
  end

  test "should get new" do
    get new_pdr_url
    assert_response :success
  end

  test "should create pdr" do
    assert_difference("Pdr.count") do
      post pdrs_url, params: { pdr: { answer: @pdr.answer, my_zone: @pdr.my_zone } }
    end

    assert_redirected_to pdr_url(Pdr.last)
  end

  test "should show pdr" do
    get pdr_url(@pdr)
    assert_response :success
  end

  test "should get edit" do
    get edit_pdr_url(@pdr)
    assert_response :success
  end

  test "should update pdr" do
    patch pdr_url(@pdr), params: { pdr: { answer: @pdr.answer, my_zone: @pdr.my_zone } }
    assert_redirected_to pdr_url(@pdr)
  end

  test "should destroy pdr" do
    assert_difference("Pdr.count", -1) do
      delete pdr_url(@pdr)
    end

    assert_redirected_to pdrs_url
  end
end
