describe Movie do
  describe "#flop?" do
    let(:flop_movie) { build(:movie, total_gross: 49_999_999) }
    let(:movie) { build(:movie, total_gross: 50_000_000) }

    it "returns flop when total_gross < 50MN" do
      expect(flop_movie).to be_flop
    end

    it "returns total_gross when total_gross not < 50MN" do
      expect(movie).not_to be_flop
    end

  end
end
