class ErasController < ApplicationController

  def add_points
    era = Era.find(params[:id])
    era.points += 1
    era.save
    render json: {message: 'point added'}, status: :ok
  end

end
