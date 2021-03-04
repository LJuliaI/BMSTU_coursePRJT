require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "BMSTU GUIDE"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | BMSTU GUIDE"
  end
test "should get map" do
  get map_path
  assert_response :success
  assert_select "title", "BMSTU GUIDE"
end
test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | BMSTU GUIDE"
  end
end
