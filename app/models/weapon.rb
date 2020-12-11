# frozen_string_literal: true

class Weapon < ApplicationRecord
  attr_accessor :name, :description, :power_base, :power_step, :level
  
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
