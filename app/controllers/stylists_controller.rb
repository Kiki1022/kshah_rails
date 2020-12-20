class StylistsController < ApplicationController
    before_action :redirect_if_unauthorized
    
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
            redirect_to stylist_path(@stylist) 
        else
            @errors = @stylist.errors.full_messages
            render :new 
        end
    end
  
    def destroy
        @stylist = Stylist.find(params[:id])
        @stylist.destroy
        redirect_to '/home'
    end
    private

    def stylist_params
        params.require(:stylist).permit(:username, :password)
    end
end


#   def destroy
#     @artist = Artist.find(params[:id])
#     @artist.destroy
#     flash[:notice] = "Artist deleted."
#     redirect_to artists_path
#   end

