describe 'Viewing an individual event' do
  let!(:event) { create(:event) }
  let!(:free_event) { create(:event, price: 0.0) }

  it "shows the event's details" do
    visit event_url(event)
    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.starts_at)
  end

  it "shows the price if the price is not 0" do
    visit event_url(event)
    expect(page).to have_text(event.price)
  end

  it "shows 'Free' if the prices is 0" do
    visit event_url(free_event)
    expect(page).to have_text("Free")
  end
end
