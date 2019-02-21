class CreateProductVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :product_vendors do |t|
      t.references :product, foreign_key: true
      t.references :vendor, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
