class Bed < ActiveRecord::Base
  def initialize(id, field_state)
    @id, @field = id, field_state
  end
end
