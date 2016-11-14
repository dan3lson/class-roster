class AddIndexStats < ActiveRecord::Migration
  def change
    add_index :stats, :student_id
  end
end
