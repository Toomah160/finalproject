class Idea < ActiveRecord::Base
    belongs_to :users
    has_one :platform
    
    validates :name, presence: true
    validates :platform, presence: true
    
end
