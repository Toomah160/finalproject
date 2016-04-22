class User < ActiveRecord::Base
    has_many :ideas
    belongs_to :role

    validates :name, presence: true, length: { maximum: 50 }
   # validates :admin ,:dependent => :delete_all
    validates :password, presence: true, length: { minimum: 2 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      validates :email, presence: true, length: { maximum: 255 },
      format: { with: VALID_EMAIL_REGEX }
      
      validates :email, presence: true, length: { maximum: 255 },
      format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false }
      
      before_save { self.email = email.downcase }
      
      has_secure_password
      
      validates :email, presence: true, length: { maximum: 255 },
format: { with: VALID_EMAIL_REGEX },
uniqueness: { case_sensitive: false }

end
