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

  it "shows all the correct attributes" do
    expect(page).to have_text(movie1.title)
    expect(page).to have_text(movie1.rating)
    expect(page).to have_text(movie1.total_gross)
    expect(page).to have_text(movie1.description)
    expect(page).to have_text(movie1.released_on)
  end
end
