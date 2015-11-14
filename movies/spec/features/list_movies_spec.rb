describe 'Viewing the list of movies' do
  let!(:movie1) { create(:movie) }
  let!(:movie2) { create(:movie) }
  let!(:movie3) { create(:movie) }
  let!(:movie4) { create(:movie) }

  before(:each) do
    visit movies_url
  end

  it 'shows the movies' do
    expect(page).to have_text(movie1.title)
    expect(page).to have_text(movie2.title)
    expect(page).to have_text(movie3.title)
    expect(page).to have_text(movie4.title)
  end

  it "does not show a movie that hasn't yet been released" do
    movie = create(:movie, released_on: 1.month.from_now)

    visit movies_path

    expect(page).not_to have_text(movie.title)
  end
end
