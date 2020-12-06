class Stylist < ApplicationRecord
    has_secure_password

    has_many :appointments
    has_many :clients, through: :appointments

    validates :username, presence: true, uniqueness: true
    
end
