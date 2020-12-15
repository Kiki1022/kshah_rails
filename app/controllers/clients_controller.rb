class ClientsController < ApplicationController
 
    def index
        @clients = Client.all
    end

    def show
        @client = Client.find(params[:id])
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.create(client_params)

    end

    def edit
        @client = Client.find_by(id: params[:id])
    end

    def update
        @client.update(client_params)
        @client.save
    end

    def destroy

    end

    private

        def client_params
            params.require(:client).permit(:name, :notes)
        end


end