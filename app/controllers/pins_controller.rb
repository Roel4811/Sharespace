class PinsController < ApplicationController
before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all.order("created_at DESC")
  end

  def show
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

  def edit
  end

  def destroy
    @pin.destroy
    redirect_to root_path
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Succesfully updated"
    else
      render 'edit'
    end
  end

private

  def pin_params
    params.require(:pin).permit(:title, :description)
  end

  def set_pin
    @pin = Pin.find(params[:id])
  end


end
