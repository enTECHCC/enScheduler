class SeniorsController < ApplicationController
  def new
  end

  def index
    @seniors = Senior.find_each(:start => 0, :batch_size => 10)
  end

  def create
     @senior = Senior.new(senior_params)

     @senior.save
     redirect_to @senior
  end

  def show
    @senior = Senior.find(params[:id])
  end

  private
    def senior_params
      params.require(:senior).permit(:first_name, :last_initial, :info)
    end
end
