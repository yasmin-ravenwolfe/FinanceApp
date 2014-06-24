class UpdateAssociations < ActiveRecord::Migration
  def change
    change_table :purchases do |t|
      t.remove :group_id
    end
  end
end
