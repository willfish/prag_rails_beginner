module ReviewsHelper
  def format_average_stars(movie)
    if movie.has_reviews?
      '*' * movie.average_stars.floor
    else
      'No reviews'
    end
  end
end
