module UnusualBooks
  class Book
    attr_accessor :title, :url, :most_gifted, :recommenders
    @@all = []

    def initialize(book, recommender)
      @title = book[:title]
      @url = amz_url_fix(book[:url])
      @most_gifted = book[:most_gifted]
      @recommenders << recommender

      @@all << self
    end

    def self.all
      @@all
    end

    def most_gifted?
      most_gifted
    end

    def amz_url_fix(url)
      url.gsub('offsiteoftimfe','zbaston')
    end
  end
end
