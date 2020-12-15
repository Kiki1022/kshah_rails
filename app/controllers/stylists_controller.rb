class StylistsController < ApplicationController

    
    def home
        @clients = Client.all 
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
            redirect_to stylist_path(@stylist) #show page
        else
            render :new #alert or error?
        end
    end
  
    private

    def stylist_params
        params.require(:stylist).permit(:username, :password)
    end
end
