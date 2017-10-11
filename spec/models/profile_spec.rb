require 'rails_helper'

RSpec.describe Profile, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe "Sorting by name eith letter" do
    let(:profile1) {create :profile, first_name: "Sander"}
    let(:profile2) {create :profile, first_name: "Luka"}
    let(:profile3) {create :profile, first_name: "Simon"}

    it "returns names starting with first letter" do
      expect(Profile.by_initial("S")).to match_array [profile1,profile3]
      expect(Profile.by_initial("S")).not_to match_array [profile2]

    end

  end
end
