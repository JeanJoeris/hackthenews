class PitchesController < ApplicationController
  def index

  end

  def show
    @pitch = Pitch.find(params[:id])
  end

  def new
    @pitch = Pitch.new
  end
end
