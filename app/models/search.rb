class Search < ApplicationRecord
  validates :state_code, inclusion: ["Co"]
  #libraries gem files state code.
  before_validation do
    # binding.pry
     self.state_code = state_code.capitalize
     #check into capitalize
   end  # validates :q, presence: true


end
