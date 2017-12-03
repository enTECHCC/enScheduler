class LocationsController<ApplicationController
def show
    @location = Location.find(params[:id])
end

def new
@location = Location.new
end

def create
@location = Location.new(location_params)
@location.save
redirect_to @location
end

private
def location_params
params.require(:location).permit(:first_name,:last_name,:location,:contact_name)
end
end