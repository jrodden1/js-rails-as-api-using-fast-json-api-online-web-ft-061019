class SightingsController < ApplicationController
  def initialize
    @options = {
      include: [:bird, :location]
    }
  end
  

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings, @options)
  end  

  def show
    sighting = Sighting.find(params[:id])


    render json: SightingSerializer.new(sighting, @options)
  end
end