class Admission < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 3, maximum: 200}
    
    
end