class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.integer :company_id
      t.integer :auto_id
      t.string :age_range
      t.string :gender
      t.string :city
      t.string :marital_status
      t.string :occupation
      t.integer :price

      t.timestamps
    end
  end
end
