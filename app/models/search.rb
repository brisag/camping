class Search < ApplicationRecord
  validates :stateCode, presence: true
  validates :keyword, presence: true
end
