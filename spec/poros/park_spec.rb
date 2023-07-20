require 'rails_helper'

RSpec.describe Park do 
  describe '#initialize' do
    it "exists and has attributes" do 
      data = {
          fullName: "Nicks National Park",
          description: "Nicks Friggen Awesome Park",
          directionsInfo: "Go left a lot",
          :operatingHours=>[{:standardHours=>{:wednesday=>"All Day", :monday=>"All Day", :thursday=>"All Day", :sunday=>"All Day", :tuesday=>"All Day", :friday=>"All Day", :saturday=>"All Day"}}]
      }

      formatted_hours = ["wednesday: All Day",
        "monday: All Day",
        "thursday: All Day",
        "sunday: All Day",
        "tuesday: All Day",
        "friday: All Day",
        "saturday: All Day"]

      new_park = Park.new(data)
      expect(new_park).to be_a(Park)
      expect(new_park.full_name).to eq("Nicks National Park")
      expect(new_park.description).to eq("Nicks Friggen Awesome Park")
      expect(new_park.directions_info).to eq("Go left a lot")
      expect(new_park.full_name).to eq(data[:fullName])
      expect(new_park.description).to eq(data[:description])
      expect(new_park.directions_info).to eq(data[:directionsInfo])
      
      expect(new_park.format_days).to eq(formatted_hours)
    end
    
  end
end