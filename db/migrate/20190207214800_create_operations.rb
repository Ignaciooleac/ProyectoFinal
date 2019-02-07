class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.references :appointment, foreing_key: true
      t.references :port, foreing_key: true
      t.datetime :date
      t.string :operation
      t.string :quantity
      t.timestamps
    end
  end
end
