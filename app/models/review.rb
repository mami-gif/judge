class Review < ApplicationRecord
belongs_to :user
belongs_to :product
validates :user_id, presence: true
validates :product_id, presence: true
validates :total, presence: true
validates :package, presence: true
validates :price, presence: true
validates :color, presence: true
validates :amount, presence: true
validates :naming, presence: true
validates :concept, presence: true
validates :balance, presence: true
validates :comment, presence: true
end
