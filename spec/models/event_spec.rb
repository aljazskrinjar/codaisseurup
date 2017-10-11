require 'rails_helper'

# RSpec.describe Event, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    #it { is_expected.to validate_length_of(:listing_name).is_at_most(50) }
  end


describe "#bargain?" do
    let(:bargain_event) { create :event, price: 20 }
    let(:non_bargain_event) { create :event, price: 200 }

    it "returns true if the price is smaller than 30 EUR" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
  let!(:event1) { create :event, price: 100 }
  let!(:event2) { create :event, price: 300 }
  let!(:event3) { create :event, price: 200 }

  it "returns a sorted array of events by prices" do
    expect(Event.order_by_price).to match_array [event1, event2, event3]
  end
end

end
