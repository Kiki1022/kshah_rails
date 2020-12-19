class Client < ApplicationRecord

    has_many :appointments
    has_many :stylists, through: :appointments
   
    validates :name, presence: true
    validates :name, uniqueness: true
end
