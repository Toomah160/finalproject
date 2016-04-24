class AddDeveloperToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :developer, :integer
  end
end
