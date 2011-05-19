class AddFieldDataToFamily < ActiveRecord::Migration
  @families =  [
    Family.new(:name => "Kreuzblütler", :field_state => FieldState::A.id),
    Family.new(:name => "Gänsefussgewächse", :field_state => FieldState::A.id),
    Family.new(:name => "Schmetterlingsblütler", :field_state => FieldState::B.id),
    Family.new(:name => "Körbchenblütler", :field_state => FieldState::B.id),
    Family.new(:name => "Nachtschattengewächse", :field_state => FieldState::C.id),
    Family.new(:name => "Kürbisgewächse", :field_state => FieldState::C.id),
    Family.new(:name => "Gräser", :field_state => FieldState::C.id),
    Family.new(:name => "Doldenblütler", :field_state => FieldState::D.id),
    Family.new(:name => "Liliengewächse", :field_state => FieldState::D.id),
  ]
  def self.up
    @families.each { |family|
      saved = Family.find_by_name(family.name)
      if saved
        saved.field_state = family.field_state
        saved.save
        control = Family.find_by_name(family.name)
      end
    }
  end

  def self.down
    #nothing
  end
end
