class Appointment < ApplicationRecord
    
    belongs_to :stylist
    belongs_to :client

   
    validates :service, :appointment_datetime, presence: true
   

    def client_attributes=(client_attributes)
        if client_attributes[:name].present?
            client = Client.find_or_create_by(client_attributes)
            self.client = client
        end
    end

    # def service_unique
    #     service.uniq
    # end
end


  