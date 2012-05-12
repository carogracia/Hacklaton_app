class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :driver_id
      t.integer :policy_id

      t.timestamps
    end
  end
end
