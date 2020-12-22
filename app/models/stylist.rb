class Stylist < ApplicationRecord
    has_secure_password
    has_many :appointments
    has_many :clients, through: :appointments
    validates :username, presence: true, uniqueness: true
    accepts_nested_attributes_for :clients

      
    def self.find_or_create_from_google(auth)
        self.find_or_create_by(uid: auth['uid']) do |s|
            s.username = auth[:info][:name]
            s.password.SecureRandom.hex(16)
        end
    end
      
end
