class AppointmentsController < ApplicationController
    
    def index
        if params[:stylist_id]
            @stylist = Stylist.find_by(id: params[:stylist_id])
            @appointments = @stylist.appointments
        else
            @appointments = Appointment.all
        end
    end
    
    
    def show
        @appointment = Appointment.find(params[:id])
    end
    
    def new
        @appointment = Appointment.new   
    end

    def create
        @appointment = Appointment.create(appt_params)
            if @appointment.save
                redirect_to appointment_path(@appointment)
            else
                render :new
            end
    end

    private

    def appt_params
        params.require(:appointment).permit(:appointment_datetime, :client_id, :stylist_id, :id, :service, client_attributes: [:name, :bday_month])
    end

end
