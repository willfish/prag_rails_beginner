describe 'Viewing an individual movie' do
  let!(:movie) { create(:movie) }

  before(:each) do
    visit movies_url(movie)
  end

  it "it shows the movie's details" do
    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text(movie.total_gross)
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)
  end
end
