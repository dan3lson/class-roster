class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :section_id, :integer, null: false
  end
end
