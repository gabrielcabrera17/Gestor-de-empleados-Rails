class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name_employee
      t.string :lastname_employee
      t.references :city, null: false, foreign_key: true
      t.references :function, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
