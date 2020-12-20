class SessionsController < ApplicationController
    #before_action :redirect_if_unauthorized
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
        # if auth
        #     @stylist = Stylist.find_or_create_from_google(auth)
        #     session[:stylist_id] = @stylist.id
        # else
        #     @stylist = Stylist.find_by(username: params[:stylist][:username])
        # end
        #     if @stylist && @stylist.authenticate(params[:password])
        #         session[:stylist_id] = @stylist.id  
        #         redirect_to stylist_path(@stylist)
        #      else
        #          render :login
        #     end
    

# def omniauth
#         #binding.pry
#     if auth
#         stylist = Stylist.find_or_create_by(uid: auth['uid']) do |s|
#             s.username = auth['info']['name']
#             s.password = SecureRandom.hex(16)
#         end
#         if stylist.valid?
#             session[:stylist_id] = stylist.id
#             redirect_to 'stylists/show(stylist)'
#         else 
#             flash[:message] = stylist.errors.full_messages.join(", ")
#             redirect_to 'stylists/home'
#         end
#     end
# end
    def destroy
        session.clear
        redirect_to '/'
    end

    private
    def auth
        request.env['omniauth.auth']
    end
end
