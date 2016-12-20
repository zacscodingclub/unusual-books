module UnusualBooks
  class Scraper
    STARTING_URL = 'http://fourhourworkweek.com/2016/12/10/the-unusual-books-that-shaped-50-billionaires-mega-bestselling-authors-and-other-prodigies/'

    def self.scrape_recommendations
      index = Nokogiri::HTML(open(STARTING_URL))
      content = collect_content(index)

      content.each do |content|

      end
    end

    def self.collect_content(page)
      page.search('.entry-content > p')[0..57].map { |element|
        books = element.css('a').map { |link|
          {
                  :url => link['href'],
                :title => link.text,
          :most_gifted => !link.at_css('span')
          }
        }
        {
             :titan => element.children.first.text.split(', ').reverse.join(' '),
             :books => books
        }
      }
    end
  end
end
