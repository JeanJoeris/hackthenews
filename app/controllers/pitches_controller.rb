class PitchesController < ApplicationController
  def index

  end

  def show
    @pitch = Pitch.find(params[:id])
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    if @pitch.save
      redirect_to :show
    end
  end

  private

  def pitch_params
    params.require(:pitch).permit(:title, :body, :status)
  end
end
