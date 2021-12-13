class CreatePassword < ActiveRecord::Migration[6.1]
  def change
    create_table :passwords do |t|
      t.string :password
      t.string :user_email

      t.timestamps
    end
  end
end
