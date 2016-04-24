class RemoveSkillsRequiredFromIdeas < ActiveRecord::Migration
  def change
    remove_column :ideas, :skills_required, :text
  end
end
