class CreateItemFollowers < ActiveRecord::Migration
  def change
    create_table :item_followers do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps

    end
  end
end
