class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.text :skills
      t.text :overview
      t.integer :platform_id

      t.timestamps null: false
    end
  end
end
