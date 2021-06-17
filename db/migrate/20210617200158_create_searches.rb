class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :state_code
      t.json :park_data

      t.timestamps
    end
  end
end
