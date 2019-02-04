require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  def foo(page)
    "#{page} | #{@base_title}"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", foo("Home")
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", foo("Help")
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", foo("About")
  end

end
