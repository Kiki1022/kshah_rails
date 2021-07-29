class ClientsController < ApplicationController
   before_action :redirect_if_unauthorized
    
    def index
        @clients = Client
    end

end