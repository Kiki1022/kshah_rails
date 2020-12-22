class Service < ApplicationRecord
   has_many :appointments
   validates :name, presence: true 
   validates_uniqueness_of :name


end