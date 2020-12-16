class Appointment < ApplicationRecord
    
    belongs_to :stylist
    belongs_to :client

    validates :service, presence: true
    #validates :service, :appointment_datetime, presence: true
    #, reject_if: proc { |attributes| attributes['name'].blank? }

    def client_attributes=(client_attributes)
        if client_attributes[:name].present?
            client = Client.find_or_create_by(client_attributes)
            self.client = client
        end
    end

end


  