class Client < ApplicationRecord

    has_many :appointments
    has_many :stylists, through: :appointments
    validates :name, presence: true
    validates :name, uniqueness: true
    before_validation :titleize_name


    def titleize_name
        self.name = self.name.titleize
    end





end
