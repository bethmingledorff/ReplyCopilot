class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :name
      t.text :line1
      t.text :line2
      t.text :line3
      t.text :line4
      t.text :line5
      t.text :line6
      t.text :close

      t.timestamps null: false
    end
  end
end
