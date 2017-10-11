require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "associant with event" do
    let(:user) {create :user}
    let(:event) {create :event, event:user}

    it "has many events" do
      event1 = user.events.new(name: "Best picnic ever")
      event2 = user.events.new(name: "Monthly Board Games Night")
      event3 = user.events.new(name: "Best picnic ever")
      event4 = user.events.new(name: "Monthly Board Games Night")

      expect(user.events).to include(event1)
      expect(user.events).to include(event2)
      expect(user.events).to include(event3)
      expect(user.events).to include(event4)

    end
    #I wrote this one by myself so be perpared for mistakes
    it "if we delete user we also delete events" do
      expect {user.destroy}.to change(Event, :count).by(user.events.count)
    end

  end

end
