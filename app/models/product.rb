class Product < ApplicationRecord
  validates_presence_of :title, :price, :stock_quantity
end
