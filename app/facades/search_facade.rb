class SearchFacade 

  def parks(state) 
    service = ParkService.new 
    json = service.parks_by_state(state)

    @parks = json[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end