class HackerSyncWorker
  options = Selenium::WebDriver::Chrome::Options.new.add_argument('--headless')
  driver = Selenium::WebDriver.for :chrome, options: options

  number = 0

  1.upto(10) do |number|

    sleep(2)
    number + 1
    
    driver.get "https://news.ycombinator.com/news?p=#{number}"
    doc = Nokogiri::HTML.parse(driver.page_source)
    links = doc.css('a.storylink').map { |link| link }

    links.each_with_index do |link, idx|
      existing_link = Link.find_by(url: link['href'])
      if existing_link
        PageRank.create(rank: idx + 1, link_id: existing_link)
      else
        link = Link.create(text: link.content, url: link['href'])
        PageRank.create(rank: idx + 1, link_id: link.id)
      end
    end
  end

  Rails.logger.info("---saved Page Rank---")
  driver.quit
end
