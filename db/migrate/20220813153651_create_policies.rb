class CreatePolicies < ActiveRecord::Migration[7.0]
  def change
    create_table :policies do |t|
      t.integer :source_id
      t.string :type 
      t.string :division
      t.date :effective_date
      t.date :expiration_date
      t.integer :written_premium
      t.integer :carrier_policy_number 

      t.timestamps
    end
  end
end
