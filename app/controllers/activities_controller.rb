class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
    end
    
    def new
        @activity = Activity.new
    end

    def create
        logger.debug(params[:activity][:start])
        @activity_params = params[:activity]
        @start = Start.create(address: @activity_params[:start])
        @dest = Destination.create(address:@activity_params[@destination])
        @activity = Activity.new
        if @activity.save
            @activity.start = @start
            @activity.destination = @dest
            redirect_to activities_path
        else
            render "new"
        end
        
    end
end
