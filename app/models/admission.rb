class Admission < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 3, maximum: 200}
    validates :user_id, presence: true
    
end