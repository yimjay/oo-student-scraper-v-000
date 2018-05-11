require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    students_list = []
    page = Nokogiri::HTML(open(index_url))
    page.css(".student-card").collect do |student|
      student_name = 
      
      
      students_list << {:name => student.css("h4").text, :location => student.css(".student-location").text, :profile_url =>   student.css("a").attribute("href").text}
    end
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

