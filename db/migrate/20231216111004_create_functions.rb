class CreateFunctions < ActiveRecord::Migration[7.0]
  def change
    create_table :functions do |t|
      t.string :name_function

      t.timestamps
    end
  end
end
