class Question < ApplicationRecord
  belongs_to :tune
  belongs_to :game
end
