require 'rails_helper'

RSpec.describe SearchFacade do 
  describe "class methods" do 
    it '.get_parks' do 
      all_parks = SearchFacade.new.parks("TN")

      expect(all_parks).to be_an(Array)
      expect(all_parks.first).to be_a(Park)
      expect(all_parks.first.full_name).to be_a(String)
      expect(all_parks.first.description).to be_a(String)
      expect(all_parks.first.directions_info).to be_a(String)
      expect(all_parks.first.standard_hours).to be_a(Hash)

    end
  end
end