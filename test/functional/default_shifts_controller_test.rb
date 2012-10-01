require 'test_helper'

class DefaultShiftsControllerTest < ActionController::TestCase
  setup do
    @default_shift = default_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:default_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create default_shift" do
    assert_difference('DefaultShift.count') do
      post :create, default_shift: { day: @default_shift.day, finish_time: @default_shift.finish_time, start_time: @default_shift.start_time, store_id: @default_shift.store_id }
    end

    assert_redirected_to default_shift_path(assigns(:default_shift))
  end

  test "should show default_shift" do
    get :show, id: @default_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @default_shift
    assert_response :success
  end

  test "should update default_shift" do
    put :update, id: @default_shift, default_shift: { day: @default_shift.day, finish_time: @default_shift.finish_time, start_time: @default_shift.start_time, store_id: @default_shift.store_id }
    assert_redirected_to default_shift_path(assigns(:default_shift))
  end

  test "should destroy default_shift" do
    assert_difference('DefaultShift.count', -1) do
      delete :destroy, id: @default_shift
    end

    assert_redirected_to default_shifts_path
  end
end
