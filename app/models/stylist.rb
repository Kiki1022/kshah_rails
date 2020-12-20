class Stylist < ApplicationRecord
    has_secure_password
    has_many :appointments
    has_many :clients, through: :appointments
    validates :username, presence: true, uniqueness: true
    accepts_nested_attributes_for :clients


    # def self.find_or_create_from_google(auth)
    #     self.where(email: auth.info.email).first_or_create do |u|
    #   u.name = auth[:info][:name]
    #   u.password.SecureRandom.hex(13)
    #   end
      
end
