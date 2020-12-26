module AppointmentsHelper

    def strftime(appt)
        appt.appointment_datetime.strftime("%B %e, %Y at %l:%M %p")
    end

end
