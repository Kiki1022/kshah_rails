class SessionsController < ApplicationController

    def login
        @stylist = Stylist.new
        #@stylist = Stylist.find_by(username: params[:username])
    end

    def create
        @stylist = Stylist.find_by(username: params[:stylist][:username]) #this is working
        #binding.pry
            if @stylist && @stylist.authenticate(params[:password])
                session[:stylist_id] = @stylist.id  
                redirect_to stylist_path(@stylist)
             else
                 #@errors = @stylist.errors.full_messages
                 render :login
            end
   
    end

    def destroy
        session.clear
        redirect_to '/'
    end
end
