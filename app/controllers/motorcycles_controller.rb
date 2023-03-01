class MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: :home

  def home
    @motorcycles = Motorcycle.all
    @markers = @motorcycles.geocoded.map do |moto|
      {
        lat: moto.latitude,
        lng: moto.longitude
      }
    end
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    @motorcycle.user = current_user
    respond_to do |format|
      if @motorcycle.save
        format.html { redirect_to motorcycle_path(@motorcycle), notice: "Motorcycle was successfully created." }
        format.json { render :show, status: :created, location: @motorcycle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @motorcycle.errors, status: :unprocessable_entity }
      end
    end
  end

  def show; end

  def destroy
    @motorcycle.destroy
    redirect_to root_path
  end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end

  def motorcycle_params
    params.require(:motorcycle).permit(:title, :description, :category, :capacity, :price, :photo, :address)
  end
end
