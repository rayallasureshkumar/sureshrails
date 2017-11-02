class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :address
      t.integer :phone

      t.timestamps
    end
  end
end
