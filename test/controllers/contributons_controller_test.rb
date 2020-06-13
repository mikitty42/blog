require 'test_helper'

class ContributonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contributon = contributons(:one)
  end

  test "should get index" do
    get contributons_url
    assert_response :success
  end

  test "should get new" do
    get new_contributon_url
    assert_response :success
  end

  test "should create contributon" do
    assert_difference('Contributon.count') do
      post contributons_url, params: { contributon: { content: @contributon.content, title: @contributon.title } }
    end

    assert_redirected_to contributon_url(Contributon.last)
  end

  test "should show contributon" do
    get contributon_url(@contributon)
    assert_response :success
  end

  test "should get edit" do
    get edit_contributon_url(@contributon)
    assert_response :success
  end

  test "should update contributon" do
    patch contributon_url(@contributon), params: { contributon: { content: @contributon.content, title: @contributon.title } }
    assert_redirected_to contributon_url(@contributon)
  end

  test "should destroy contributon" do
    assert_difference('Contributon.count', -1) do
      delete contributon_url(@contributon)
    end

    assert_redirected_to contributons_url
  end
end
