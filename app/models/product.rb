class Product < ApplicationRecord
  validates_presence_of :title, :price, :stock_quantity

  def self.unique_products_count
    distinct.pluck(:title).count
  end

  def self.average_product_price
    average(:price)
  end

  def self.total_stock_quantity
    sum(:stock_quantity)
  end
end
