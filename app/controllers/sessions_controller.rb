class SessionsController < ApplicationController

    def login
        @stylist = Stylist.new
        #@stylist = Stylist.find_by(username: params[:username])
    end

    def create
    
        @stylist = Stylist.find_by(username: params[:username]) #this is working
    
        
            if @stylist && @stylist.authenticate(params[:password])
            
                session[:stylist_id] = @stylist.id
                
                redirect_to stylist_path(@stylist)
             else
                binding.pry
                 redirect_to login_path
            end
   
    end

    def destroy
        session.clear
        redirect_to login_path
    end
end
