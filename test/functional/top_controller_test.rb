require 'test_helper'

class TopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "index" do
    2.times{Factory(:article)}
    Factory(:article, released_at: 1.hours.from_now)
    get :index
    assert_response :sccess
    assert_select "div#content h2", 2
  end

end
