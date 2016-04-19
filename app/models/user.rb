class User < ActiveRecord::Base
    has_many :ideas
    belongs_to :role
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :admin ,default:false
    validates :password, presence: true, length: { minimum: 2 }

end
