class Appointment < ApplicationRecord
    
    belongs_to :stylist
    belongs_to :client

    validates :service, :appointment_datetime, presence: true
    accepts_nested_attributes_for :client, reject_if: proc { |attributes| attributes['name'].blank? }
end

