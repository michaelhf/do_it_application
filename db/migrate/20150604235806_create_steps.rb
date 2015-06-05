class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :item_id
      t.integer :step_number
      t.boolean :completed
      t.integer :user_id
      t.text :detail

      t.timestamps

    end
  end
end
