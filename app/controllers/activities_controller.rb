class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    @last_week_activities = 0
    @activities.each do |act|
      if (act[:created_at] + 7.days).strftime('%d/%m/%y') >= Time.now.strftime('%d/%m/%y') && (act[:distance])
        @last_week_activities += act[:distance]
      end
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    logger.debug(params[:activity][:start])
    @activity_params = params[:activity]
    @activity = Activity.new(first_address: @activity_params[:start], second_address: @activity_params[:destination])
    if @activity.save
      @activity.start = Start.new(address: @activity_params[:start])
      @activity.destination = Destination.new(address: @activity_params[:destination])
      @activity[:distance] = @activity.start.distance_to(@activity.destination).round(2)
      @activity.save
      redirect_to activities_path
    else
      flash.now[:alert] = 'Please fill the form with correct data'
      render 'new'
    end
  end
end
