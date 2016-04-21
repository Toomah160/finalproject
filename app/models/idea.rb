class Idea < ActiveRecord::Base
    belongs_to :users
    belongs_to:platform
    
    validates :name, presence: true
    validates :platform_id, presence: true
    
end

