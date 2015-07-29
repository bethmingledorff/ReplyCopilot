class AddReviewTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :review_type, :string
  end
end
