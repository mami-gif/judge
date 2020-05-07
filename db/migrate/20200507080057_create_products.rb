class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :user_id, null: false
      t.string :status, null: false
      t.string :variety, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :limited_number, null: false
      t.date :first_time, null: false
      t.date :last_time, null: false
      t.string :photo
      t.text :comment, null: false

      t.timestamps
    end
  end
end
