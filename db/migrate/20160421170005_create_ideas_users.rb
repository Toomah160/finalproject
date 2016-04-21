class CreateIdeasUsers < ActiveRecord::Migration
  def change
    create_table :ideas_users do |t|
      t.integer :roles_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
