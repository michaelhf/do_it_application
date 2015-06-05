class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.boolean :finished
      t.string :title
      t.boolean :private

      t.timestamps

    end
  end
end
