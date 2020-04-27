class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, unique: true
      t.string :password, limit: 8, null: false
      t.integer :age, null: false
      t.string :female_male, null: false
      t.integer :postal_code, null: false
      t.string :address, null: false
      t.integer :tel, null: false

      t.timestamps
    end
  end
end
