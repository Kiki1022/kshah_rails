class Appointment < ApplicationRecord
    #join table
    belongs_to :stylist
    belongs_to :client
end
