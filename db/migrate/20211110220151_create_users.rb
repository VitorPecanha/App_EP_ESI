class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_email
      t.string :user_first_name
      t.string :user_last_name
      t.string :user_cpf

      t.timestamps
    end
  end
end
