class Tune < ApplicationRecord
  has_many :questions
  has_many :games, through: :questions

  def notes
    note_strings.map { |note_string| Note.new(note_string) }
  end
end
