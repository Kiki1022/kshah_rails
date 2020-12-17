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
        @client = Client.new(client_params)
            if @client.save
                redirect_to client_path(@client)
            else
                @errors = @client.errors.full_messages
                render :new
            end
    end

    def edit
        @client = Client.find_by(id: params[:id])
    end

    def update
        @client = Client.find(params[:id])
        @client.update(client_params)
        if @client.save
            redirect_to client_path(@client)
        else
            render :edit
        end
    end

    def destroy
        @client = Client.find_by(id: params[:id])
        @client.destroy
        redirect_to '/clients'
    end

    private

        def client_params
            params.require(:client).permit(:name, :notes)
        end


end