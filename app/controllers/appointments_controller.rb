class AppointmentsController < ApplicationController
    
    def index
        @appointments = Appointment.all
    end
    
    
    def show
        @appointment = Appointment.find(params[:id])
    end
    
    def new
        @appointment = Appointment.new
        @appointment.build_client
    end

    def create
        @appointment = Appointment.new(appt_params)
            if @appointment.save
                redirect_to appointment_path(@appointment)
            else
                render :new
            end
    end

    private

    def appt_params
        params.require(:appointment).permit(:appointment_datetime, :service, :client_id, :id, :stylist_id, client_attributes: [ :name, :bday_month])
    end

end
