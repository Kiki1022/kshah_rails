class StylistsController < ApplicationController
 
    def new
        @stylist =  Stylist.new
    end

    def create
        @stylist = Stylist.new(stylist_params)
        if @stylist.save
            
            redirect_to stylist_path(@stylist) #show page
        else
            render :new #alert or error?
        end
    end

     def show
        @stylist = Stylist.find(params[:id])
     end

    def index
        @stylists = Stylist.all
    end
    
    private

    def stylist_params
        params.require(:stylist).permit(:username, :password)
    end
end
