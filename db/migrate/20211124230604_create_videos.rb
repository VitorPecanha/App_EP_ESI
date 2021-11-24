class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :nome_da_planta
      t.string :nome_do_video
      t.string :provedor
      t.string :link

      t.timestamps
    end
  end
end
