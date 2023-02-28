class MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: %i[show destroy]

  def home
    @motorcycles = Motorcycle.all
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def show
  end

  def destroy
    @motorcycle.destroy
    redirect_to root_path
  end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end
end
