class ClientsController < ApplicationController
   before_action :redirect_if_unauthorized
    
    def index
        @clients = Client.all
    end

    def show
        @client = Client.find(params[:id])
    end
end