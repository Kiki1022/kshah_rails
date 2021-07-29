class Service < ApplicationRecord
   has_many :appointments
   
   validates :name, presence: true, uniqueness: true
   
   def self.most_requested
      self.left_joins(:appointments).group('services.id').order('count(appointments.service_id) desc')
   end
  
end