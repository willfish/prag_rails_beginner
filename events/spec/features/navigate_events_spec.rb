describe 'Navigating events' do
  let!(:event) { create(:event) }

  it 'allows navigation from the detail page to the listing page' do
    visit event_url(event)
    click_link "All Events"
    expect(current_path).to eq(events_path)
  end

  it 'allows navigation from the listing page to the detail page' do
    visit events_url
    click_link event.name
    expect(current_path).to eq(event_path(event))
  end
end
