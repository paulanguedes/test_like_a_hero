# frozen_string_literal: true

class Weapon < ApplicationRecord
  validates :power_step, numericality: { equal_to: 100 }
  validates :power_base, numericality: { equal_to: 3000 }
  validates :level, numericality: { greather_than: 1, less_than_or_equal_to: 99 }

  def current_power
    power_base + ((level - 1) * power_step)
  end
end
