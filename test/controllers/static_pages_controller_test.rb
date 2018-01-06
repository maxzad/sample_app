require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "NurseLinked is the solution to staffing"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "NurseLinked is the solution to staffing"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | NurseLinked is the solution to staffing"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | NurseLinked is the solution to staffing"
  end

end
