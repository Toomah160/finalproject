class AddToIdeas < ActiveRecord::Migration
  #def change
   #  add_column :user_id, :role_id
  #end
#end

  def change
    add_column :ideas, :user_id,:integer
    add_column :ideas, :role_id,:integer
  
  end

end