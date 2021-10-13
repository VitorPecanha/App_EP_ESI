class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.integer :plant_id
      t.string :plant_name
      t.integer :water_hour_interval
      t.integer :fertilizer_hour_interval
      t.boolean :prunning

      t.timestamps
    end
  end
end
