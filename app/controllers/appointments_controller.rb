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
            if @appointment.save
                redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
        else
            flash[:message] = "#{@appointment.errors.full_messages.to_sentence}."
            redirect_to new_appointment_path
        end 
    end

    def edit
        @appointment = Appointment.find_by(id: params[:id])
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(appt_params)
        if @appointment.save
            redirect_to stylist_appointment_path(@appointment.stylist_id, @appointment)
        else
            @errors = @appointment.errors.full_messages.join(", ")
            render :edit
        end
    end
         
    # def most_popular
    #     @appointments = Appointment.most_popular_service
    # end

    def destroy
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.destroy
        redirect_to '/appointments'
    end

           
    

    private

    def appt_params
        params.require(:appointment).permit(:appointment_datetime, :client_id, :stylist_id, :id, :service_id, service_attributes: :name, client_attributes: [:name, :notes])
    end

end
