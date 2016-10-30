class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :photo, null: false
      t.string :role, null: false
      t.timestamps null: false
    end
  end
end
