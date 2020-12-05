These two are seperated for 
User Controller - responsible for creating new user only, once registered and logged in, new session will be created with users data.
Sessions Controller - responsible for creating new session/logging in user. 

Appointment model is Join table
    belongs to client and stylist

Stylist has many clients through appts
has many appts

clients has many appts
has many stylists through appts

Validations:
stylists and client
    name-presence
    email- presence and uniqueness
    passwords- has secure pw will ensure presence
    

appointment-validate presence of attributes..
    appointment_datetime
    service
    stylist_id
    client_id