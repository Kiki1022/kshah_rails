class Client < ApplicationRecord
    #has_secure_password

    has_many :appointments
    has_many :stylists, through: :appointments

    validates :email, presence: true, uniqueness: true
    validates :name, presence: true

    
end
