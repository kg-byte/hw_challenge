class CreateCarriers < ActiveRecord::Migration[7.0]
  def change
    create_table :carriers do |t|
      t.integer :source_id
      t.string :company_name
      t.string :company_address
      t.string :company_address_2
      t.string :company_city
      t.string :company_state
      t.string :company_zip
      t.timestamps
    end
  end
end
