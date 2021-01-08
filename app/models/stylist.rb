class Stylist < ApplicationRecord
    has_secure_password 
    has_many :appointments
    has_many :clients, through: :appointments
    
    validates :username, presence: true, uniqueness: true
    


    def self.find_or_create_from_google(auth)
        self.find_or_create_by(uid: auth['uid']) do |s|
            s.username = auth[:info][:name] #represents the user, individual to user auth-secret code specific to user, uid stands for unique identifier
            s.password = SecureRandom.hex(16) #create random string of password
        end
    end

    
end
