class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.integer :phone
      t.string :website
      t.text :description

      t.timestamps
    end
  end
end
