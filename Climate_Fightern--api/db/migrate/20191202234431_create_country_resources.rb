class CreateCountryResources < ActiveRecord::Migration[6.0]
  def change
    create_table :country_resources do |t|
      t.integer :production
      t.references :country, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
