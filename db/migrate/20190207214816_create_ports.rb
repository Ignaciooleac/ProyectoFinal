class CreatePorts < ActiveRecord::Migration[5.2]
  def change
    create_table :ports do |t|
      t.string :name, null => false
      t.references :company, foreing_key: true
      t.timestamps
    end
  end
end
