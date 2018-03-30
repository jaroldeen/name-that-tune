class Note
  attr_reader :duration, :pitch

  # note_string should be in the format "duration,pitch"
  def initialize(note_string)
    components = note_string.split(',')
    @duration = components.first
    @pitch = components.second
    raise ArgumentError unless pitch && duration
  end
end
