class MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: [:show]

  def index
    @motorcycles = Motorcycle.all
  end

  def new
    @motorcycle = Motorcycle.new
  end

  # def create
  #   @user = User.find(params[:user_id])
  #   @motorcycle = Motorcycle.new(motorcycle_params)
  #   respond_to do |format|
  #     if @motorcycle.save
  #       format.html { redirect_to motorcycle_path(@motorcycle), notice: "Motorcycle was successfully created." }
  #       # format.json { render :show, status: :created, location: @motorcycle }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       # format.json { render json: @motorcycle.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def show; end

  def home; end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end

  def motorcycle_params
    params.require(:motorcycle).permit(:title, :description, :category, :capacity, :price)
  end
end
