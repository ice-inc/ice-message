require 'test_helper'

class ActionLogsControllerTest < ActionController::TestCase
  setup do
    @action_log = action_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_log" do
    assert_difference('ActionLog.count') do
      post :create, action_log: { took_time: @action_log.took_time, user_id: @action_log.user_id }
    end

    assert_redirected_to action_log_path(assigns(:action_log))
  end

  test "should show action_log" do
    get :show, id: @action_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_log
    assert_response :success
  end

  test "should update action_log" do
    patch :update, id: @action_log, action_log: { took_time: @action_log.took_time, user_id: @action_log.user_id }
    assert_redirected_to action_log_path(assigns(:action_log))
  end

  test "should destroy action_log" do
    assert_difference('ActionLog.count', -1) do
      delete :destroy, id: @action_log
    end

    assert_redirected_to action_logs_path
  end
end
