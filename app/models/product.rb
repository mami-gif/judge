class Product < ApplicationRecord
  belongs_to :user
  enum status: [ :Luxury, :Daily ]
  enum variety: [ :Foods, :Goods ]
  mount_uploader :photo, ImagesUploader
  validates :user,
  presence: true
  validates :status,
  presence: true
  validates :variety,
  presence: true
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
