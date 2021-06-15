class WaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :color, :description, :destination_id, :destination
  # belongs_to :destination
end
