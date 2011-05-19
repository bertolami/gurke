class Energy

  attr_reader :id

  def initialize(id)
    @id = id
  end

  STARKZEHRER = FieldState.new "Starkzehrer"
  SCHWACHZEHRER = FieldState.new "Schwachzehrer"

  @@all_energies = [STARKZEHRER, SCHWACHZEHRER]

  def self.all_energies
    @@all_energies
  end

end