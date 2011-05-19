class FieldState

  attr_reader :id

  def initialize(id)
    @id = id
  end

  A = FieldState.new "A"
  B = FieldState.new "B"
  C = FieldState.new "C"
  D = FieldState.new "D"

  @@all_states = [A, B, C, D]

  def self.all_states
    @@all_states
  end

end