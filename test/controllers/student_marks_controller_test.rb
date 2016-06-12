require 'test_helper'

class StudentMarksControllerTest < ActionController::TestCase
  setup do
    @student_mark = student_marks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_marks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_mark" do
    assert_difference('StudentMark.count') do
      post :create, student_mark: { mark: @student_mark.mark, roll: @student_mark.roll, student_id: @student_mark.student_id }
    end

    assert_redirected_to student_mark_path(assigns(:student_mark))
  end

  test "should show student_mark" do
    get :show, id: @student_mark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_mark
    assert_response :success
  end

  test "should update student_mark" do
    patch :update, id: @student_mark, student_mark: { mark: @student_mark.mark, roll: @student_mark.roll, student_id: @student_mark.student_id }
    assert_redirected_to student_mark_path(assigns(:student_mark))
  end

  test "should destroy student_mark" do
    assert_difference('StudentMark.count', -1) do
      delete :destroy, id: @student_mark
    end

    assert_redirected_to student_marks_path
  end
end
