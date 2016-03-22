class CreateDatastrs < ActiveRecord::Migration
  def change
    create_table :datastrs do |t|
      t.integer :income
      t.integer :expenses
      t.string :use

      t.timestamps null: false
    end
  end
end
