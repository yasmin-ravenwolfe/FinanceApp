class AddReceiptTable < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.belongs_to :user
      t.belongs_to :purchase
      t.datetime :date
      t.decimal :percentage, precision: 3, scale: 2

      t.timestamps
    end
  end
end
