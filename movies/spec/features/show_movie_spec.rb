describe 'Viewing an individual movie' do
  let!(:movie) { create(:movie, total_gross: 51_000_000) }
  let!(:flop_movie) { create(:movie, total_gross: 48_000_000)}

  it "shows the movie's details" do
    visit movie_url(movie)
    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)
  end

  it "shows 'Flop' if the movie is a flop" do
    visit movie_url(flop_movie)
    expect(page).to have_text("Flop")
  end

  it "shows the total gross if the movie is not a flop" do
    visit movies_url(movie)
    expect(page).to have_text("51,000,000")
  end
end
