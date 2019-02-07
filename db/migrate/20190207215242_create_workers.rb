class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.column :name, :string, :null => false
      t.column :last_name, :string
      t.column :email, :string
      t.column :password, :string
      t.column :phone, :string
      t.references :company, foreing_key: true
      t.timestamps
    end
  end
end
