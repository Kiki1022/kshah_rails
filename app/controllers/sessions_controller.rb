class SessionsController < ApplicationController

    def login
        @stylist = Stylist.new 
    end

    def create
        if !auth
            @stylist = Stylist.find_by(username: params[:stylist][:username])
                if @stylist && @stylist.authenticate(params[:password])
                    session[:stylist_id] = @stylist.id 
                    redirect_to stylist_path(@stylist)
                else
                    flash[:message] = "Please try again"
                   #@errors = @stylist.errors.full_messages.join(", ")
                    redirect_to '/'
                end
        else
            @stylist = Stylist.find_or_create_by(uid: auth['uid']) do |s|
                s.username = auth['info']['name']
                s.password = SecureRandom.hex(16)
            end
                if @stylist.valid?
                    session[:stylist_id] = @stylist.id
                    redirect_to stylist_path(@stylist)
                else
                    @errors = @stylist.errors.full_messages.join(", ")
                    redirect_to '/'
                end
            end
        end

    def destroy
        session.clear
        flash[:message] = "Successfully Logged Out"
        redirect_to '/'
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end
