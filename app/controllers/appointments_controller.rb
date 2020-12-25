class AppointmentsController < ApplicationController
    before_action :redirect_if_unauthorized
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]
 
    

    def index
        if params[:stylist_id]
            @stylist = Stylist.find_by(id: params[:stylist_id])
            @appointments = @stylist.appointments.order_by_appointment_datetime
        else
            @appointments = Appointment.all.order_by_appointment_datetime
        end
    end
    
    
    def show 
       
    end
    
    def new
        @appointment = Appointment.new   
        @appointment.build_service
        @appointment.build_client 
    end

    def create
        @appointment = Appointment.new(appt_params)
        if @appointment.save
                redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
        else
            flash[:message] = "#{@appointment.errors.full_messages.to_sentence}."
            render :new
        end 
    end

    def edit
    
    end

    def update
        @appointment.update(appt_params)
        if @appointment.save
            redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
        else
            @errors = @appointment.errors.full_messages.join(", ")
            render :edit
        end
    end

    def destroy
        @appointment.destroy
        redirect_to appointments_path
    end

    private
   
    def set_appointment
        @appointment = Appointment.find_by(id: params[:id])
    end


    def appt_params
        params.require(:appointment).permit(:appointment_datetime, :client_id, :stylist_id, :id, :service_id, service_attributes: :name, client_attributes: [:name, :notes])
    end

end
