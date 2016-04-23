class Idea < ActiveRecord::Base
   
   belongs_to:platform
    has_many :users, through: :ideas_users
    has_many :ideas_users, through: :ideas_users

    validates :name, :user_id, :description, :skills_required, :help_needed, :platform_id, presence: true

    # :ascending, -> { order(ideas.created_at ASC) }
    scope :ascending, -> {order('name asc')}
    scope :descending, -> {order('name desc')}

  #  scope :open, -> {where(filled: false)}

    
end

