class Appointment < ApplicationRecord
    
    belongs_to :stylist
    belongs_to :client

    validates :service, :appointment_datetime, presence: true
    accepts_nested_attributes_for :client, reject_if: proc { |attributes| attributes['name'].blank? }
end

def clients_attributes=(client_attributes)
    client_attributes.values.each do |client_attribute| 
        if client_attribute[:name].present?
        client = Client.find_or_create_by(client_attribute)
        self.client << client
          if !self.client.include?(client)
          self.client.to_build(:client => client)
          end
        end
      end
    end
  