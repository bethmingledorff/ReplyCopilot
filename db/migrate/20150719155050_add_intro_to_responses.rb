class AddIntroToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :intro, :text
  end
end
