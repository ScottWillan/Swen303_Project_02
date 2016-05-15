require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get new_arrivals" do
    get :new_arrivals
    assert_response :success
  end

  test "should get browse" do
    get :browse
    assert_response :success
  end

end
