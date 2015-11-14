require 'spec_helper'

describe "Creating a new movie" do
  it "saves the movie and shows the new movie's details" do
    visit movies_url

    click_link 'Add New Movie'

    expect(current_path).to eq(new_movie_path)

    fill_in "Title", with: "New Movie Title"
    fill_in "Description", with: "Superheroes saving the world from villains"
    fill_in "Rating", with: "PG-13"
    fill_in "Total gross", with: "75000000"
    fill_in "Released on", with: (Time.now.year - 1).to_s
    fill_in "Cast", with: "The award-winning cast"
    fill_in "Director", with: "The ever-creative director"
    fill_in "Duration", with: "123 min"
    fill_in "Image file name", with: "placeholder.png"

    click_button 'Create Movie'
    movie = Movie.last
    expect(current_path).to eq(movie_path(movie))
    expect(page).to have_text('New Movie Title')
    expect(page).to have_text(movie.cast)
    expect(page).to have_text(movie.director)
    expect(page).to have_text(movie.duration)
    expect(page).to have_selector("img[src$='#{movie.image_file_name}']")
  end
end
