class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :customer_name
      t.string :response_type
      t.string :responder_name
      t.string :responder_email

      t.timestamps null: false
    end
  end
end
