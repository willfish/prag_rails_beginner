require 'spec_helper'

describe "Deleting a movie" do
  let(:movie_attributes) { attributes_for(:movie) }
  it "destroys the movie and shows the movie listing without the deleted movie" do
    movie = Movie.create(movie_attributes)

    visit movie_path(movie)

    click_link 'Delete'

    expect(current_path).to eq(movies_path)
    expect(page).not_to have_text(movie.title)
  end
end
