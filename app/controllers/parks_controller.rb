class ParksController < ApplicationController 
  def index 
    @parks = SearchFacade.new.parks(params[:state])
  end
end