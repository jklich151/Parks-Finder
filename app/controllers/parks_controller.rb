class ParksController < ApplicationController
  def index
    search_results = SearchFacade.new
    @parks = search_results.parks(params[:state])

  end
end
