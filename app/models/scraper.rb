require 'nokogiri'
require 'open-uri'

class Scraper < ApplicationRecord

  def self.store_website(url)
    Website.create(url: url)
  end

  def self.get_page(url)
    Nokogiri::HTML(open(url))
  end

  def self.parse(url)
    page = get_page(url)
    if !page.nil?
      website_id = store_website(url).id
      h1 = page.css('h1').map { |h| h.text.strip }
      h2 = page.css('h2').map { |h| h.text.strip }
      h3 = page.css('h3').map { |h| h.text.strip }
      links = page.css('a').map { |a| a }
      store_headers(h1, h2, h3, website_id)
      store_links(links, website_id)
      page
    end
  end

  def self.store_headers(h1, h2, h3, website_id)
    h1.each { |h| Header.create({text: h, size: 'h1', website_id: website_id }) }
    h2.each { |h| Header.create({text: h, size: 'h2', website_id: website_id }) }
    h3.each { |h| Header.create({text: h, size: 'h3', website_id: website_id }) }
  end

  def self.store_links(links, website_id)
    links.each { |link| Link.create({
      text: link.text.strip,
      url: link.attr('href'),
      website_id: website_id
    })}
  end

end
