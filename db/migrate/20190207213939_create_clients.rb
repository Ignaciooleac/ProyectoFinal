class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name, :null => false
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone
      t.references :company, foreing_key: true
      t.timestamps
    end
  end
end
