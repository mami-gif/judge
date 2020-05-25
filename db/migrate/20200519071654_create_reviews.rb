class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.integer :total, null: false
      t.integer :package, null: false
      t.integer :price, null: false
      t.integer :color, null: false
      t.integer :amount, null: false
      t.integer :naming, null: false
      t.integer :concept, null: false
      t.integer :balance, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
