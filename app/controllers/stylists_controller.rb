class StylistsController < ApplicationController
   before_action :redirect_if_unauthorized, only: [:index, :show]
   before_action :authorized_to_view?, only: [:show]
   
    def home
        
    end

    def index
        @stylists = Stylist.all
    end
    
    def show
        @stylist = Stylist.find(params[:id])
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
            render :new 
        end
    end
  
    private

    def stylist_params
        params.require(:stylist).permit(:username, :password)
    end

    def authorized_to_view?
        if Stylist.find_by(id: params[:id]) != current_user
            flash[:message] = "Unauthorized"
            redirect_to stylist_path(current_user)
        end
    end
        

end



