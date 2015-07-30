class RemoveReviewTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :review_type, :string
  end
end
