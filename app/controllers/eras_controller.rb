class ErasController < ApplicationController

  def add_points
    era = Era.find(params[:id])
    era.update(point: 0) if era.point.nil?
    era.update(point: era.point + 1)
    era.set_tier
    era.save
    user = User.find(params[:user_id])
    if EraPoint.where(user: user, era: era).empty?
      era_p = EraPoint.create(era: era, user: user, points: 1)
      era_p.save
      era_p.set_tier(user)
      render json: {message: 'point added'}, status: :ok
      return
    end
    era_point = EraPoint.find_by(era: era, user: user)
    era_point.update(points: era_point.points + 1)
    era_point.set_tier(user)
    era_point.save
    render json: {message: 'point added'}, status: :ok
  end

end
