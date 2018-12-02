require 'test_helper'

class SectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @section = sections(:one)
  end

  test "shouldn't find a missing section" do
    assert Section.where("semester like ?", "winter").length == 0
  end

  test "should not save sections without data" do
     section = Section.new
    assert_not section.save
  end

  test "should get index" do
    get sections_url
    assert_response :success
  end

  test "should get new" do
    get new_section_url
    assert_response :success
  end

  test "should create section" do
    assert_difference('Section.count') do
      post sections_url, params: { section: { course: @section.course, course_id: @section.course_id, number: @section.number, roomnumber: @section.roomnumber, semester: @section.semester } }
    end

    assert_redirected_to section_url(Section.last)
  end

  test "should show section" do
    get section_url(@section)
    assert_response :success
  end

  test "should get edit" do
    get edit_section_url(@section)
    assert_response :success
  end

  test "should update section" do
    patch section_url(@section), params: { section: { course: @section.course, course_id: @section.course_id, number: @section.number, roomnumber: @section.roomnumber, semester: @section.semester } }
    assert_redirected_to section_url(@section)
  end

  test "should destroy section" do
    assert_difference('Section.count', -1) do
      delete section_url(@section)
    end

    assert_redirected_to sections_url
  end
end
