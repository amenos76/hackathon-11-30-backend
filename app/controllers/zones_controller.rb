class ZonesController < ApplicationController

    def index
        @zones = Zone.all

        render json: @zones
    end
    
end
