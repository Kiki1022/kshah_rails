class Client < ApplicationRecord

    has_many :appointments
    has_many :stylists, through: :appointments
   
    validates :name, :bday_month, presence: true

end
