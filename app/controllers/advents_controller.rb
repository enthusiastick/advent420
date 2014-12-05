class AdventsController < ApplicationController

  def create
    @advent = Advent.new(advent_params)
    if @advent.save
      flash[:sucess] = 'Entry saved.'
      redirect_to root_path
    else
      flash.now[:alert] = 'Unable to save. Please check your input an retry.'
      render :new
    end
  end

  def new
    @advent = Advent.new
  end

  protected

  def advent_params
    params.require(:advent).permit(:date, :description, :title)
  end

end
