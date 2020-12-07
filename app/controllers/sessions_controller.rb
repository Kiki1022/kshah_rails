class SessionsController < ApplicationController

    def login
        @stylist = Stylist.new
    end

    def create
        @stylist = Stylist.find_by(username: params[:username])
            if @stylist && @stylist.authenticate(password: params[:password])
                session[:stylist_id] = @stylist.id
                redirect_to stylist_path(@stylist)
            else
                render :login
            end
   
    end

    def destroy
        session.clear
        redirect_to login_path
    end
end
