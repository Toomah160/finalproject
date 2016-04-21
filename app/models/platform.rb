class Platform < ActiveRecord::Base
    has_many :idea
    validates :name, presence: true, uniqueness: true
end
