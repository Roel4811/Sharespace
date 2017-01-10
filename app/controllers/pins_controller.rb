class PinsController < ApplicationController

  def index
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.create(pin_params)

    if @pin.save
      redirect_to @pin, notice: "Succesfully saved pin!"
    else
      render 'new'
    end
  end

  def update
  end

private

  def pin_params
    params.require(:pin).permit(:title, :description)
  end


end
