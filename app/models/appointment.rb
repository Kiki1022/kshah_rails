class Appointment < ApplicationRecord
    
    belongs_to :stylist
    belongs_to :client

    validates :service, :appointment_datetime, presence: true
end
