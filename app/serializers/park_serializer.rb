class ParkSerializer
  include FastJsonapi::ObjectSerializer
  # set_id { nil }
  attributes :name, :code, :description, :directions_url, :hours


end
