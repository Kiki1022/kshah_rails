class Stylist < ApplicationRecord
    has_secure_password

    has_many :appointments
    has_many :clients, through: :appointments

    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
end
