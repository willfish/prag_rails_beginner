describe 'Viewing the list of events' do
  let!(:event1) { create(:event) }
  let!(:event2) { create(:event) }
  let!(:event3) { create(:event) }

  it 'shows the event' do
    visit events_url

    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).to have_text(event3.name)
  end
end
