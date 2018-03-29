class Game < ApplicationRecord
  has_many :questions
  has_many :tunes, through: :questions
end
