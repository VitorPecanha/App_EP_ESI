class AddUserEmailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_email, :string
    add_index :users, :user_email, unique: true
  end
end
