class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :ship, foreing_key: true
      t.references :port, foreing_key: true
      t.datetime :eta
      t.datetime :etb
      t.datetime :etd
      t.string :type
      t.string :quantity
      t.timestamps
    end
  end
end
