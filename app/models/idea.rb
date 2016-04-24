class Idea < ActiveRecord::Base
   
   belongs_to:platform 
    has_many :users, through: :ideas_users
    has_many :ideas_users, through: :ideas_users

    validates :name, :description, :help_needed, :platform_id, presence: true
   # validates :designer, :developer, default: 0
    # :ascending, -> { order(ideas.created_at ASC) }
    scope :ascending, -> {order('name asc')}
    scope :descending, -> {order('name desc')}

    
end

