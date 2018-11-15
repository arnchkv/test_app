class User < ApplicationRecord
    
    validates :username, presence: true,
                 uniqueness:{case_sensitive: false}, 
                 length: {minimum: 3, maximum: 50}
                 VALID_EMAIL_REGEX: 
    validates :email, presence: true, length {maximum: 100},
                uniqueness:{case_sensitive: false},
                 format: {with: VALID_EMAIL_REGEX }
end