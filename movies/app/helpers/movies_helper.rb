module MoviesHelper
  def format_price(movie)
    movie.flop? ? "Flop" : number_to_currency(movie.total_gross)
  end

  def image_for(movie)
  if movie.image_file_name.blank?
    image_tag('placeholder.png', size: "200x280")
  else
    image_tag(movie.image_file_name, size: "200x280")
  end
end
end
