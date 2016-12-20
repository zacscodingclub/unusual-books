book = {
  title: "Blah Blah",
  author: "Bill Braski",
  url: "http://amazon.com/ASIN",
  recommenders: {
    ...
  }
}

Associations:
  Book has_many Authors
  Recommender has_many Books
  Recommender has_many Authors through Books

Tables:
  Book: id, title, url, count, most_gifted?
  Author: id, name, url, count
  Recommender: id, name
  BookAuthorJoin:  book_id, author_id
  RecommenderBookJoin: recommender_id, book_id
