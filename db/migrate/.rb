class RemoveField < ActiveRecord::Migration
 def change
    remove_column :ideas, :platform, :string
  end
  def self.up
    remove_column :ideas, :platform
  end
end
