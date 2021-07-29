class ServicesController < ApplicationController

    def most_requested
       @most_requested = Service.most_requested
    end
end
