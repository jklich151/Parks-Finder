class ParksService

  def parks_by_state(state)
    response = conn.get("/api/v1/parks?stateCode=#{state}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nps.gov") do |faraday|
      faraday.params["api_key"] = ENV["PARKS_KEY"]
    end
  end
end
