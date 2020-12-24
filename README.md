# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...




def create
    @stylist = Stylist.find_by(username: params[:username])
   
    if @stylist && @stylist.authenticate(params[:password])
      session[:stylist_id] = @stylist.id
      redirect_to stylist_path(@stylst)
    else
      flash[:message] = "Invalid login credentials."
      render :new
    end
  end



def omniauth #logs users in with omniauth
    stylist = Sylist.find_or_create_from_google(auth)

    if stylist.valid?
      session[:sylist_id] = stylist.id
      redirect_to stylist_path(stylist)  
    else
      flash[:error] = stylist.errors.full_messages.join(", ")
      redirect_to root_path
    end
  end


 