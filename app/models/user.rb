class User < ApplicationRecord
<<<<<<< HEAD
    validates :username, presence: true,
                 uniqueness:{case_sensitive: false}, 
                 length: {minimum: 3, maximum: 50}
                 VALID_EMAIL_REGEX: 
    validates :email, presence: true, length {maximum: 100},
=======
    has_many :admissions
    before_save {self.email =  email.downcase}
    validates :username, presence: true,
                 uniqueness:{case_sensitive: false}, 
                 length: {minimum: 3, maximum: 50}

                 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 100},
>>>>>>> useradmission-association
                uniqueness:{case_sensitive: false},
                 format: {with: VALID_EMAIL_REGEX }
end