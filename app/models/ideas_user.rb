class IdeasUser < ActiveRecord::Base
    belongs_to :user
    belongs_to :idea, dependent: :destroy
end
