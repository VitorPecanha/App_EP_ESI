class AddUserSessionIdToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :user_session_id, :integer
    add_index :plants, :user_session_id
  end
end
