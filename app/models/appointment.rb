class Appointment < ApplicationRecord
    
    belongs_to :stylist
    belongs_to :client
    belongs_to :service
    validates :appointment_datetime, presence: true
    
    scope :order_by_appointment_datetime, ->{order(:appointment_datetime)}
 
    def service_attributes=(attr)
        if !attr[:name].blank?
            self.service= Service.find_or_create_by(name: attr[:name].titleize)
        end
    end
    

    def client_attributes=(attr)
        if !attr[:name].blank?
            self.client= Client.find_or_create_by(name: attr[:name].titleize)
        end
        #if user tries to create client that already existed, it goes into database and finds it for you.
    end

    
end


  