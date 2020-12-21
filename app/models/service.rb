class Service < ApplicationRecord
   has_many :appointments
   before_validation :titleize_name
   
   validates :name, presence: true, uniqueness: true

    def titleize_name
        self.name = self.name.titleize
    end

end
