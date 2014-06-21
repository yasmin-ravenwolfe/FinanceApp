class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to :user
      t.belongs_to :group
      t.datetime :date
      t.text :description
      t.text :category
      t.decimal :price, precision: 15, scale: 2
      t.integer :quantity
      t.boolean :taxable

      t.timestamps
    end
  end
end
