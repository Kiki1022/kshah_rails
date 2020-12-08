class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.create(appt_params)
    end


end
