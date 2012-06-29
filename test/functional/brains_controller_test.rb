require 'test_helper'

class BrainsControllerTest < ActionController::TestCase
  setup do
    @brain = brains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brain" do
    assert_difference('Brain.count') do
      post :create, brain: { blood: @brain.blood, finger: @brain.finger, string: @brain.string }
    end

    assert_redirected_to brain_path(assigns(:brain))
  end

  test "should show brain" do
    get :show, id: @brain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brain
    assert_response :success
  end

  test "should update brain" do
    put :update, id: @brain, brain: { blood: @brain.blood, finger: @brain.finger, string: @brain.string }
    assert_redirected_to brain_path(assigns(:brain))
  end

  test "should destroy brain" do
    assert_difference('Brain.count', -1) do
      delete :destroy, id: @brain
    end

    assert_redirected_to brains_path
  end
end
