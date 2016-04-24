class RemoveRoleIdFromIdeas < ActiveRecord::Migration
  def change
    remove_column :ideas, :role_id, :integer
  end
end
