class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employeenumber
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
