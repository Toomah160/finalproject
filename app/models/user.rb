class User < ActiveRecord::Base
    has_many :ideas
    belongs_to :role
end
