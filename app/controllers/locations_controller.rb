class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
    @trip = Trip.find(params[:trip_id])
  end
  
  
  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to trip_location_path(@location.trip_id, @location)
    else
      render :new
    end
  end
  
  def edit

  end

  def update
    if @location.update(location_params)
      redirect_to locations_path
    else 
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end

  private
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:location_name, :days, :activity, :trip_id)
    end
end
