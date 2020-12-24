class StylistsController < ApplicationController
   before_action :redirect_if_unauthorized, only: [:index, :show]
#    skip_before_action :redirect_if_unauthorized, only: [:new, :create]
    # before_action :authorize_to_view, only: [:show]
   
    def home
        @clients = Client.all 
    end

    def index
        @stylists = Stylist.all
      
    end
    
    def show
        @stylist = Stylist.find(params[:id])
        if @stylist != current_user
            flash[:message] = "Unauthorized"
            redirect_to stylist_path(current_user)
        end
    end

    def new
        @stylist =  Stylist.new
    
    end

    def create
        @stylist = Stylist.new(stylist_params)
        if @stylist.save 
            session[:stylist_id] = @stylist.id
            redirect_to stylist_path(@stylist) 
        else
           @errors = @stylist.errors.full_messages.join(", ")
            render :new 
        end
    end
  
    private

    def stylist_params
        params.require(:stylist).permit(:username, :password)
    end

end



