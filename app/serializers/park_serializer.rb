class ParkSerializer
  include FastJsonapi::ObjectSerializer
  # set_id { nil }
  attributes :name, :code, :lat_long, :address, :description, :directions_url, :hours
end
