class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_email
      t.string :customer_name

      t.timestamps null: false
    end
  end
end
