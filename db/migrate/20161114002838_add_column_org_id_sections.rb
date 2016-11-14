class AddColumnOrgIdSections < ActiveRecord::Migration
  def change
    add_column :sections, :org_id, :integer, null: false
  end
end
