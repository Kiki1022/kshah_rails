class AppointmentsController < ApplicationController
    before_action :redirect_if_unauthorized
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]
    before_action :authorized_to_modify_appt?, only: [:edit, :update, :destroy]
    


    def index
        if params[:stylist_id]
            @stylist = Stylist.find_by(id: params[:stylist_id])
            @appointments = @stylist.appointments.order_by_appointment_datetime
        else
            @appointments = Appointment.order_by_appointment_datetime
        end
    end
    
    
    def show 
     
    end
    
    def new
        @appointment = Appointment.new
    end

    def create 
        @appointment = current_user.appointments.build(appt_params)
        if @appointment.save
                redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
        else
            render :new
        end 
    end

    def edit
        
    end

    def update
         @appointment.update(appt_params)  
         redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
    end

    def destroy
        @appointment.destroy
        flash[:message] = "Appointment was successfully deleted"
        redirect_to appointments_path
    end

    private
   
    def set_appointment
        @appointment = Appointment.find_by(id: params[:id])
    end


    def appt_params
        params.require(:appointment).permit(:appointment_datetime, :client_id, :stylist_id, :id, :service_id, service_attributes: :name, client_attributes: :name)
    end

    def authorized_to_modify_appt?
        if @appointment.stylist != current_user
          flash[:unauthorized] = "You are not authorized to modify that appointment."
          redirect_to appointments_path 
        end
      end
  

end
