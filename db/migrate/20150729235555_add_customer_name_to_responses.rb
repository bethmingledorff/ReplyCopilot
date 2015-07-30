class AddCustomerNameToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :customer_name, :string
  end
end
