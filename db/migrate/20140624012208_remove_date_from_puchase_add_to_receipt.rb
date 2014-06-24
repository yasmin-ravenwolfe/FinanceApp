class RemoveDateFromPuchaseAddToReceipt < ActiveRecord::Migration
  def change
    change_table :purchases do |t|
      t.remove :date
    end
  end
end
