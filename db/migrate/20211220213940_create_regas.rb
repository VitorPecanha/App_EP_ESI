class CreateRegas < ActiveRecord::Migration[6.1]
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
