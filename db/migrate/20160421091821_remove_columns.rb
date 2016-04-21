class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :ideas, :platform, :string
  end
end
