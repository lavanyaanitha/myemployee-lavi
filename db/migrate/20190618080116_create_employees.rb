class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
