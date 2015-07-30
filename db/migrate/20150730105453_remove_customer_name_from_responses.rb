class RemoveCustomerNameFromResponses < ActiveRecord::Migration
  def change
    remove_column :responses, :customer_name, :string
  end
end
