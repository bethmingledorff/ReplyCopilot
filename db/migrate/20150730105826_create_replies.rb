class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :greeting
      t.text :line_one
      t.text :line_two
      t.text :line_three
      t.text :line_four
      t.text :closing
      t.text :salutation

      t.timestamps null: false
    end
  end
end
