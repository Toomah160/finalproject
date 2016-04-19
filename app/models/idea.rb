class Idea < ActiveRecord::Base
    belongs_to :users
    has_one :platform
end
