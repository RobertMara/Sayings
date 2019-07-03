require 'test_helper'

class SayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sayer = sayers(:one)
  end

  test "should get index" do
    get sayers_url
    assert_response :success
  end

  test "should get new" do
    get new_sayer_url
    assert_response :success
  end

  test "should create sayer" do
    assert_difference('Sayer.count') do
      post sayers_url, params: { sayer: { name: @sayer.name } }
    end

    assert_redirected_to sayer_url(Sayer.last)
  end

  test "should show sayer" do
    get sayer_url(@sayer)
    assert_response :success
  end

  test "should get edit" do
    get edit_sayer_url(@sayer)
    assert_response :success
  end

  test "should update sayer" do
    patch sayer_url(@sayer), params: { sayer: { name: @sayer.name } }
    assert_redirected_to sayer_url(@sayer)
  end

  test "should destroy sayer" do
    assert_difference('Sayer.count', -1) do
      delete sayer_url(@sayer)
    end

    assert_redirected_to sayers_url
  end
end
