class AppointmentsController < ApplicationController
    before_action :redirect_if_unauthorized

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
        @appointment.build_service
        @appointment.build_client

       
    end

    def create
        @appointment = Appointment.new(appt_params)
        #binding.pry
        #if params[:appointment][:client_id] == !nil
            if @appointment.save
                redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
            #end
        else
            @errors = @appointment.errors.full_messages
            #redirect_to new_stylist_appointment_path(@appointment.stylist_id)
            render 'new'
        end 
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
        redirect_to '/appointments'
    end

           
    

    private

    def appt_params
        params.require(:appointment).permit(:appointment_datetime, :client_id, :stylist_id, :id, :service_id, service_attributes: :name, client_attributes: [:name, :notes])
    end

end
