class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.text :skills_required
      t.text :description
      t.string :platform
      t.string :help_needed
      t.timestamps null: false
    end
  end
end
