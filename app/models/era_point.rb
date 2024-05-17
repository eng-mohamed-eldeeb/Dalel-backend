class EraPoint < ApplicationRecord
  belongs_to :user
  belongs_to :era
  enum tier: {a: 3, b: 2,c: 1, d: 0}

  def set_tier(user)
    era_points = EraPoint.where(user: user)
    return if era_points.empty?
    era_points = era_points.order(:points)

    era_points.each_with_index do |era_point, index|
      era_point.update(tier: index)
    end
  end
end
