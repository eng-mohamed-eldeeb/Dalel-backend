class SubEraPoint < ApplicationRecord
  belongs_to :sub_era
  belongs_to :user
  enum tier: {a: 3, b: 2,c: 1, d: 0}


  def set_tier(user)
    user = User.find(user.id)
    sub_era_points = SubEraPoint.where(user: user)
    return if sub_era_points.empty?
    sub_era_points = sub_era_points.order(:points)

    mean = sub_era_points.length < 4 ? 1 : sub_era_points.length / 4
    counter = 0
    sub_era_points.each_with_index do |sub_era_point, index|
      if index % mean == 0 && index != 0
        counter += 1
      end
      counter = 3 if counter > 3  # Ensure counter never exceeds 3
      sub_era_point.update(tier: counter)
    end
  end
end
