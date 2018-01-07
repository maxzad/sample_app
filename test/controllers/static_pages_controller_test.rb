require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "NurseLinked is the solution to staffing"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "NurseLinked is the solution to staffing"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | NurseLinked is the solution to staffing"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | NurseLinked is the solution to staffing"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | NurseLinked is the solution to staffing"
  end
end
