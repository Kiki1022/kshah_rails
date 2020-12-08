class ClientsController < ApplicationController
    def new

    end
    
    def create

    end

    def index
        @clients = Client.all
    end

    def show

        @client = Client.find(params[:id])

    end

    def edit

    end
     
    def update

    end

    def delete

    end
end
