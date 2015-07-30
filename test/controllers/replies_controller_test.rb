require 'test_helper'

class RepliesControllerTest < ActionController::TestCase
  setup do
    @reply = replies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:replies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reply" do
    assert_difference('Reply.count') do
      post :create, reply: { closing: @reply.closing, greeting: @reply.greeting, line_four: @reply.line_four, line_one: @reply.line_one, line_three: @reply.line_three, line_two: @reply.line_two, salutation: @reply.salutation }
    end

    assert_redirected_to reply_path(assigns(:reply))
  end

  test "should show reply" do
    get :show, id: @reply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reply
    assert_response :success
  end

  test "should update reply" do
    patch :update, id: @reply, reply: { closing: @reply.closing, greeting: @reply.greeting, line_four: @reply.line_four, line_one: @reply.line_one, line_three: @reply.line_three, line_two: @reply.line_two, salutation: @reply.salutation }
    assert_redirected_to reply_path(assigns(:reply))
  end

  test "should destroy reply" do
    assert_difference('Reply.count', -1) do
      delete :destroy, id: @reply
    end

    assert_redirected_to replies_path
  end
end
