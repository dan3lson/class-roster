class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :correct, default: 0
      t.integer :incorrect, default: 0
      t.integer :student_id, null: false
      t.timestamps null: false
    end
  end
end
