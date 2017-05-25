require 'test_helper'

class ScraperTest < ActiveSupport::TestCase

  test "store_website method creates a valid instance of a website" do
    website = Scraper.store_website("http://example.com")
    assert website.valid?, website.errors.first
  end

  test "get_page method returns a document when a valid url is passed" do
    page = Scraper.get_page("https://github.com")
    assert_equal 'document', page.name, "the get_page method did not return a document"
  end

  test "parse method stores headers" do
    Scraper.parse("https://github.com")
    assert Header.all.length > 0, "No headers were created"
  end

  test "parse method stores links" do
    Scraper.parse("https://github.com")
    assert Link.all.length > 0, "No links were created"
  end

end
