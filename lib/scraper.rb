require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    students_list = []
    page = Nokogiri::HTML(open(index_url))
    page.css(".student-card").collect do |student|
      students_list << {:name => student.css("h4.student-name").text, :location => student.css("p.student-location").text, :profile_url =>   student.css("a").attribute("href").text}
    end
    students_list
  end

  def self.scrape_profile_page(profile_url)
    profile = Nokogiri::HTML(open(profile_url))
    profile.css()
  end

end

