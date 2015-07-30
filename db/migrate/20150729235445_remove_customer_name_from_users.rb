class RemoveCustomerNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :customer_name, :string
  end
end
