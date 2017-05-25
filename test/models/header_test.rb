require 'test_helper'

class HeaderTest < ActiveSupport::TestCase

  test "valid header" do
    header = Header.new(text: "Hello", size: "h1", website_id: 1)
    assert header.valid?, header.errors.first
  end

  test "should not save without text" do
    header = Header.new(size: "h1", website_id: 1)
    assert_not header.valid?, "Header saved without text"
  end

  test "should not save without website id" do
    header = Header.new(text: "Hello", size: "h1")
    assert_not header.valid?, "Header saved without website id"
  end
  
end
