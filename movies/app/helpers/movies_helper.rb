module MoviesHelper
  def format_price(movie)
    movie.flop? ? "Flop" : number_to_currency(movie.total_gross)
  end
end
