json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :year, :pg, :minute, :userrate, :imdbrate, :plot, :director, :writers, :stars, :poster
  json.url movie_url(movie, format: :json)
end
