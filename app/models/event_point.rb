class EventPoint < ApplicationRecord
  belongs_to :event
  belongs_to :user

  enum tier: {a: 3, b: 2,c: 1, d: 0}

  def set_tier(user)
    user = User.find(user.id)
    event_points = EventPoint.where(user: user)
    return if event_points.empty?
    event_points = event_points.order(:points)

    mean = event_points.length < 4 ? 1 : event_points.length / 4
    counter = 0
    event_points.each_with_index do |event_point, index|
      if index % mean == 0 && index != 0
        counter += 1
      end
      counter = 3 if counter > 3
      event_point.update(tier: counter)
    end
    event_points
  end

end
