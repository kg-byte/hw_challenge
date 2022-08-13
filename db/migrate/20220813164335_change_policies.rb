class ChangePolicies < ActiveRecord::Migration[7.0]
  def change
    rename_column :policies, :type, :policy_type
    add_column :policies, :carrier_id, :integer
    add_column :policies, :client_id, :integer
    change_column :policies, :effective_date, :string
    change_column :policies, :expiration_date, :string
  end
end
