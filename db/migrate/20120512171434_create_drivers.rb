class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :age_range
      t.string :gender
      t.string :city
      t.string :marital_status
      t.string :occupation
      t.string :email

      t.timestamps
    end
  end
end
