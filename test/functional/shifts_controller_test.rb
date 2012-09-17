require 'test_helper'

class ShiftsControllerTest < ActionController::TestCase
  setup do
    @shift = shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post :create, shift: { break_time: @shift.break_time, day: @shift.day, finish_time: @shift.finish_time, orders_to_place: @shift.orders_to_place, shift_type: @shift.shift_type, start_time: @shift.start_time, store_id: @shift.store_id }
    end

    assert_redirected_to shift_path(assigns(:shift))
  end

  test "should show shift" do
    get :show, id: @shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shift
    assert_response :success
  end

  test "should update shift" do
    put :update, id: @shift, shift: { break_time: @shift.break_time, day: @shift.day, finish_time: @shift.finish_time, orders_to_place: @shift.orders_to_place, shift_type: @shift.shift_type, start_time: @shift.start_time, store_id: @shift.store_id }
    assert_redirected_to shift_path(assigns(:shift))
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete :destroy, id: @shift
    end

    assert_redirected_to shifts_path
  end
end
