# frozen_string_literal: true

class Weapon < ApplicationRecord
  validates :power_step, numericality: { equal_to: 100 }
  validates :power_base, numericality: { greather_than_or_equal_to: 3000 }
  validates :level, numericality: { greather_than: 1, less_than_or_equal_to: 99 }
  
  def power_base_points
    if level === 1 do
        power_base = 3000
    end
  end

  def power_step_points
    if level > 1 do
        power_step = power_base + (100*level)
    end
  end

end
