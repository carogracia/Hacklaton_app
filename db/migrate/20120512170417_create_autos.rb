class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :use

      t.timestamps
    end
  end
end
