class AddPlatformIdToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :platform_id, :integer
  end
end
