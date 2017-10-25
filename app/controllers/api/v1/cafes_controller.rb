class Api::V1::CafesController < ApplicationController

  def index
    @cafes = Cafe.all
    render json: @cafes
  end
  
end
