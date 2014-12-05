class AdventsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :new, :update]

  def create
    @advent = Advent.new(advent_params)
    if @advent.save
      flash[:sucess] = 'Entry saved.'
      redirect_to root_path
    else
      flash.now[:alert] = 'Unable to save. Please check your input and retry.'
      render :new
    end
  end

  def index
    @advents = Advent.all
    if Date.today.month == 12
      @today = Date.today.day
    else
      @today = 31
    end
  end

  def new
    @advent = Advent.new
  end

  def show
    @advent = Advent.find(params[:id])
  end

  def update
    @advent = Advent.find(params[:id])
    if @advent.update(advent_params)
      flash[:success] = 'Entry updated.'
      redirect_to root_path
    else
      flash.now[:alert] = 'Unable to update. Please check your input and retry.'
      render :show
    end
  end

  protected

  def advent_params
    params.require(:advent).permit(:date, :description, :image, :title)
  end

end
