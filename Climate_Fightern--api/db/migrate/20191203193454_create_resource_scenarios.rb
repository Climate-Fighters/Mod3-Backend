class CreateResourceScenarios < ActiveRecord::Migration[6.0]
  def change
    create_table :resource_scenarios do |t|
      t.belongs_to :resource, null: false, foreign_key: true
      t.belongs_to :scenario, null: false, foreign_key: true
      t.integer :yield

      t.timestamps
    end
  end
end
