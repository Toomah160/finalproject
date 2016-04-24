class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.text :description
      t.string :platform
      t.string :help_needed
      t.integer :developer, default: 0
      t.integer :designer, default: 0

      t.timestamps null: false
    end
  end
end
