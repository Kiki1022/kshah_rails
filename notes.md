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
stylists 
    
    username- presence and uniqueness
    password- has secure pw will ensure presence

    stylists can:
    Create/read/update/destroy their own appointments
    also can Read ALL appointments but cannot do anyother functions

client
    name
    email
    rating as a tipper
    comments-optional
client is created by stylist(user)

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

Stylist Show page

link to create new appt
view their appts
view ALL appointments

stylist/id/appt/show page
shows their appts
has option to delete or edit any of them

stylist/id/appts
can view everyones appt.
maybe someting else??
Maybe can only view stylst/client/service and notes

can only make appts or view index page if have an account

with no account you can only view stylist names and clients names and notes on home page.
on home page there will be featured makeup artists and celebrities(seeds)


