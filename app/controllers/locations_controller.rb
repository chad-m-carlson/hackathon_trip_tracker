class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

<<<<<<< HEAD

=======
>>>>>>> 7cdce5c34ffd93ab523530119235b88ba17291cf
  def index
    @locations = Location.all
  end

<<<<<<< HEAD

=======
>>>>>>> 7cdce5c34ffd93ab523530119235b88ba17291cf
  def show
  end

  def new
    @location = Location.new
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
  end

  def update
  end

  def destroy
    @location.destroy
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:location_name, :days, :activity, :trip_id)
    end
end
