require 'test_helper'

class WebsiteTest < ActiveSupport::TestCase

  test "valid website" do
    website = Website.new(url: "http://example.com")
    assert website.valid?, website.errors.first
  end

  test "website not valid without a url" do
    website = Website.new
    assert_not website.valid?, "Website is valid without a url"
  end

end
