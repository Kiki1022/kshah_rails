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

scope methods

    -responsible for returnin a set of data based on what method's goal is
    -live in model
    -class method b/c we will be querying all of the instances of that class
    -keywords are active record queries eg "where",  "find"(select is sql method), "order", "all"
    -in controller this will be called in this format
        Class.scope_method_name stored inside instance variable so you can utilize it inside the views
       @girls_night = Appointment.champagne_party
    -

    user authentication
        -users controller is responsible for creating our client/stylist object => signing up
        
        -sessions controller responsible for logging our users in/ logging out

         "rake routes | grep stylists" for routes

                             stylists GET    /stylists(.:format)                                                                      stylists#index
                                      POST   /stylists(.:format)                                                                      stylists#create
                          new_stylist GET    /stylists/new(.:format)                                                                  stylists#new
                         edit_stylist GET    /stylists/:id/edit(.:format)                                                             stylists#edit
                              stylist GET    /stylists/:id(.:format)                                                                  stylists#show
                                      PATCH  /stylists/:id(.:format)                                                                  stylists#update
                                      PUT    /stylists/:id(.:format)                                                                  stylists#update
                                      DELETE /stylists/:id(.:format)                                                                  stylists#destroy
