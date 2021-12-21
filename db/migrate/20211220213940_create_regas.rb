class CreateRegas < ActiveRecord::Migration[7.0]
  def change
    create_table :regas do |t|
      t.string :planta_nome
      t.integer :dia
      t.integer :mes
      t.integer :hora

      t.timestamps
    end
  end
end
