class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.integer :phone_number
      t.string :password
      t.string :password_confirmation

      t.timestamps null: false
    end
  end
end
