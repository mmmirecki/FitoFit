class TripsController < ApplicationController
    def index
        @trips = Trip.all
    end

    def new
        @trip = Trip.new
    end
 
    def create
        @trip = Trip.new(address_params)
        if @trip.save
            redirect_to trips_path
        else
            render "new"
        end
        
    end

    private

    def address_params
        params.require(:trip).permit(:street,:city,:country)
    end
end
