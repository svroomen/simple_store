class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string  :title,            :null => false
      t.text    :description
      t.decimal :price,            :null => false
      t.integer :stock_quantity,   :null => false

      t.timestamps
    end
  end
end
