json.array!(@books) do |book|
  json.extract! book, :id, :ISBN, :title, :description, :author, :status, :user
  json.url book_url(book, format: :json)
end
