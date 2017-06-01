require 'test_helper'

class StorytellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storyteller = storytellers(:one)
  end

  test "should get index" do
    get storytellers_url, as: :json
    assert_response :success
  end

  test "should create storyteller" do
    assert_difference('Storyteller.count') do
      post storytellers_url, params: { storyteller: { email: @storyteller.email, name: @storyteller.name, password: @storyteller.password, total: @storyteller.total, username: @storyteller.username } }, as: :json
    end

    assert_response 201
  end

  test "should show storyteller" do
    get storyteller_url(@storyteller), as: :json
    assert_response :success
  end

  test "should update storyteller" do
    patch storyteller_url(@storyteller), params: { storyteller: { email: @storyteller.email, name: @storyteller.name, password: @storyteller.password, total: @storyteller.total, username: @storyteller.username } }, as: :json
    assert_response 200
  end

  test "should destroy storyteller" do
    assert_difference('Storyteller.count', -1) do
      delete storyteller_url(@storyteller), as: :json
    end

    assert_response 204
  end
end
