class RemoveUseridFromPurchase < ActiveRecord::Migration
  def change
    change_table :purchases do |t|
      t.remove :user_idre
    end
  end
end
