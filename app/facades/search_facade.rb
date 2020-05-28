class SearchFacade

  def parks(state)
    json = ParksService.new.parks_by_state(state)

    @parks = json[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
