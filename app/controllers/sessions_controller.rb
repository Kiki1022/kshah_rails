class SessionsController < ApplicationController

    def login
        @stylist = Stylist.new
     
    end

    def create
        @stylist = Stylist.find_by(username: params[:stylist][:username]) 
            if @stylist && @stylist.authenticate(params[:password])
                session[:stylist_id] = @stylist.id  
                redirect_to stylist_path(@stylist)
             else
                 render :login
            end
   
    end

    def destroy
        session.clear
        redirect_to '/'
    end
end
