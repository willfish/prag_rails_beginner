describe 'Viewing an individual event' do
  let!(:event) { create(:event) }

  before(:each) do
    visit event_url(event)
  end

  it "it shows the event's details" do
    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.starts_at)
  end
end
