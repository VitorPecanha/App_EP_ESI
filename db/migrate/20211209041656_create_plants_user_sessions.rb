class CreatePlantsUserSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :plants_user_sessions do |t|
      t.references :user_session, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
