class Product < ApplicationRecord
  has_many :product_vendors
  has_many :vendors , through: :product_vendors
end
