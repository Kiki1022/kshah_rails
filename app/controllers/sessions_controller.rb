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

    def omniauth
        #binding.pry
        stylist = Stylist.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |s|
            s.username = auth['info']['first_name']
            s.password = SecureRandom.hex(16)
        end 
        if stylist.valid?
            session[:stylist_id] = stylist.id
            redirect_to 'stylists/show(@stylist)'
        else 
            flash[:message] = stylist.errors.full_messages.join(", ")
            redirect_to 'stylists/home'
        end
    end

    def destroy
        session.clear
        redirect_to '/'
    end

    private
    def auth
        request.env['omniauth.auth']
    end
end
