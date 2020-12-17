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
        @appointment.build_client
    end

    def create
        @appointment = Appointment.new(appt_params)
            if @appointment.save
                redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
            else
                @errors = @appointment.errors.full_messages
                render :new
            end

            def edit
                @appointment = Appointment.find_by(id: params[:id])
            end

            def update
                @appointment = Appointment.find(params[:id])
                @appointment.update(appt_params)
                redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
            end
            
            def destroy
                #binding.pry
                @appointment = Appointment.find_by(id: params[:id])
                @appointment.destroy
                #alert appointment has been deleted
                redirect_to '/appointments'
                end

           
    end

    private

    def appt_params
        params.require(:appointment).permit(:appointment_datetime, :client_id, :stylist_id, :id, :service, client_attributes: [:name, :notes])
    end

end
