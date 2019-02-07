class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name, :null => false
      t.references :client, foreing_key: true
      t.timestamps
    end
  end
end
