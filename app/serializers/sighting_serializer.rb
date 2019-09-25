class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location

  # @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
end
