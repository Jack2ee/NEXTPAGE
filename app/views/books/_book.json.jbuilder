json.extract! book, :id, :title, :author, :published, :cd, :created_at, :updated_at
json.url book_url(book, format: :json)
