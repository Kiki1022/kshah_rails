class StylistsController < ApplicationController
 
    def new
        @stylist =  Stylist.new
    end

    # def create

    # end

     def show
        @stylist = Stylist.find(params[:id])
     end

    def index
        @stylists = Stylist.all
    end
    
end
