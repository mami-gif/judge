class Product < ApplicationRecord
  belongs_to :users
  enum status: [ :luxury, :daily ]
  enum variety: [ :foods, :goods ]
  validates :user_id,
  presence: true
  validates :status,
  presence: true
  validates :last_name,
  presence: true
  validates :variety,
  presence: true,
  validates :name,
  presence: true
  validates :price,
  presence: true
  validates :limited_number,
  presence: true
  validates :first_time,
  presence: true
  validates :last_time,
  presence: true
  validates :comment,
  presence: true
end
