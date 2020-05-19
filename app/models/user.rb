class User < ApplicationRecord
  has_many :products
  validates :first_name,
  presence: true
  validates :last_name,
  presence: true
  validates :email,
  presence: true,
  uniqueness:true
  validates :password,
  length: { maximum: 8}
  validates :age,
  presence: true
  validates :female_male,
  presence: true
  validates :postal_code,
  presence: true
  validates :address,
  presence: true
  validates :tel,
  presence: true  
end
