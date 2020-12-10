class User < ApplicationRecord
  # opções dentro do campo kind
  enum kind: %i[knight wizard]
  # validação do próprio Rails
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 99 }

  # método customizado
  def title
    "#{kind} #{nickname} ##{level}"
  end
end
