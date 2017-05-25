require 'test_helper'

class LinkTest < ActiveSupport::TestCase

  test "valid link" do
    link = Link.new(text: "Example Link", url: "http://test.com", website_id: 1)
    assert link.valid?, link.errors.first
  end

  test "link doesn't save without text" do
    link = Link.new(url: "http://test.com", website_id: 1)
    assert_not link.valid?, "Link saved without text"
  end

  test "link doesn't save without url" do
    link = Link.new(text: "Example Link", website_id: 1)
    assert_not link.valid?, "Link saved without url"
  end

  test "link doesn't save without website id" do
    link= Link.new(text: "Example Link", url: "http://test.com")
    assert_not link.valid?, "Link saved without website id"
  end

end
