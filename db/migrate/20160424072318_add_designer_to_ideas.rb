class AddDesignerToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :designer, :integer
  end
end
