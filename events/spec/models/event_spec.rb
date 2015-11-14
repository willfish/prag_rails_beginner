describe Event do
  let(:free_event) { build(:event, price: 0.0) }
  let(:event) { build(:event) }
  let(:blank_event) { build(:event, price: nil) }

  it "is free if the price is 0.0" do
    expect(free_event.free?).to eq(true)
  end

  it "is free if the price is blank" do
    expect(blank_event.free?).to eq(true)
  end

  it "is not free if the price is higher than 0.0" do
    expect(event.free?).not_to eq(true)
  end
end
