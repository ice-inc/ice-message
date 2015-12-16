require 'test_helper'

class TallyActionLogsControllerTest < ActionController::TestCase
  setup do
    @tally_action_log = tally_action_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tally_action_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tally_action_log" do
    assert_difference('TallyActionLog.count') do
      post :create, tally_action_log: {  }
    end

    assert_redirected_to tally_action_log_path(assigns(:tally_action_log))
  end

  test "should show tally_action_log" do
    get :show, id: @tally_action_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tally_action_log
    assert_response :success
  end

  test "should update tally_action_log" do
    patch :update, id: @tally_action_log, tally_action_log: {  }
    assert_redirected_to tally_action_log_path(assigns(:tally_action_log))
  end

  test "should destroy tally_action_log" do
    assert_difference('TallyActionLog.count', -1) do
      delete :destroy, id: @tally_action_log
    end

    assert_redirected_to tally_action_logs_path
  end
end
