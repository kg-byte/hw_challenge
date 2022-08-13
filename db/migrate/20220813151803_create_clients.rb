class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.integer :source_id
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :division
      t.integer :major_group
      t.integer :industry_group
      t.integer :SIC 
      t.string :description
      
      t.timestamps
    end
  end
end
