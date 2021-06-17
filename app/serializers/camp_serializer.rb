class CampSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :reservation, :regulations, :camp_url, :hours, :restroom, :water, :fees, :fee_info
end
