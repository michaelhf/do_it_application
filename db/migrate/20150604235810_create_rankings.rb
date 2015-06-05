class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :user_id
      t.integer :completed
      t.integer :created

      t.timestamps

    end
  end
end
