require 'test_helper'

class DepartmentalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departmentals_index_url
    assert_response :success
  end

  test "should get new" do
    get departmentals_new_url
    assert_response :success
  end

  test "should get show" do
    get departmentals_show_url
    assert_response :success
  end

  test "should get edit" do
    get departmentals_edit_url
    assert_response :success
  end

end
