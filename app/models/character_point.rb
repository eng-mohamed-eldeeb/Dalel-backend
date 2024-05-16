class CharacterPoint < ApplicationRecord
  belongs_to :character
  belongs_to :user
  enum tier: {a: 3, b: 2,c: 1, d: 0}


  def set_tier(user)
    user = User.find(user.id)
    character_points = CharacterPoint.where(user: user)
    return if character_points.empty?
    character_points = character_points.order(:points)

    mean = character_points.length < 4 ? 1 : character_points.length / 4
    counter = 0
    character_points.each_with_index do |character_point, index|
      if index % mean == 0 && index != 0
        counter += 1
      end
      counter = 3 if counter > 3  # Ensure counter never exceeds 3
      character_point.update(tier: counter)
    end
    character_points
  end
end
