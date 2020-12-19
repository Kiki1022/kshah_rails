class Appointment < ApplicationRecord
    
    belongs_to :stylist
    belongs_to :client
    belongs_to :service
    validates :appointment_datetime, presence: true
    #accepts_nested_attributes_for :service
    

    # def client_attributes=(client_attributes)
    #     if client_attributes[:name].present?
    #         client = Client.find_or_create_by(client_attributes)
    #         self.client = client
    #     end
    # end
  

    # def client_attributes=(client_attributes)
    #     client_attributes.values.each do |client_attribute| 
    #       if client_attribute[:name].present?
    #       client = Client.find_or_create_by(client_attribute)
    #       self.build_client
    #         if !self.client.include?(client)
    #         self.build_client(:client_id => client)
    #         end
    #       end
    #     end
    #   end


      def client_attributes=(attr)
        # find or create a brand with the name passed in
        if !attr[:name].blank?
            self.client= Client.find_or_create_by(name: attr[:name])
        end
        #if user tries to create client that already existed, it goes into database and finds it for you.
        # associate that brand to this shoe
    end





end


  