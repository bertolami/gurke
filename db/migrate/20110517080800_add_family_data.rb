class AddFamilyData < ActiveRecord::Migration
  @families =  [
    Family.new(:name => "Doldenblütler", :energy => "Schwachzehrer"),
    Family.new(:name => "Gänsefussgewächse", :energy => "Starkzehrer"),
    Family.new(:name => "Gräser", :energy => "Starkzehrer"),
    Family.new(:name => "Körbchenblütler", :energy => "Schwachzehrer"),
    Family.new(:name => "Kreuzblütler", :energy => "Starkzehrer"),
    Family.new(:name => "Kürbisgewächse", :energy => "Starkzehrer"),
    Family.new(:name => "Liliengewächse", :energy => "Schwachzehrer"),
    Family.new(:name => "Nachtschattengewächse", :energy => "Starkzehrer"),
    Family.new(:name => "Schmetterlingsblütler", :energy => "Schwachzehrer"),
    Family.new(:name => "Nüsslisalat" ,:energy => "Schwachzehrer"),
    Family.new(:name => "Gurken",  :energy => "Schwachzehrer"),
    Family.new(:name => "Schnittsalat",  :energy => "Schwachzehrer"),
    Family.new(:name => "Schnittsalat",  :energy => "Schwachzehrer"),
    Family.new(:name => "Salatzwiebeln",  :energy => "Schwachzehrer")
  ]
  def self.up
    @families.each { |family|  family.save  }
  end

  def self.down
    @families.each { |family|
      saved = Family.find_by_name(family.name)
      if saved
        saved.delete
      end

    }
  end
end
