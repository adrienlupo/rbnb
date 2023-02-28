class MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: [:show]

  def index
    @motorcycles = Motorcycle.all
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def show; end

  def home; end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end
end
