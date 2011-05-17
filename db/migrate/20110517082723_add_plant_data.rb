class AddPlantData < ActiveRecord::Migration
  @plants = [
    Plant.new(:name => "Auberginen", :family => Family.find_by_name("Nachtschattengewächse")),
    Plant.new(:name => "Blumenkohl", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Broccoli", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Buschbohnen", :family => Family.find_by_name("Schmetterlingsblütler")),
    Plant.new(:name => "Chicoree", :family => Family.find_by_name("Körbchenblütler")),
    Plant.new(:name => "Chicorino Rosso"),
    Plant.new(:name => "Chinakohl", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Endivien", :family => Family.find_by_name("Körbchenblütler")),
    Plant.new(:name => "Erbsen", :family => Family.find_by_name("Schmetterlingsblütler")),
    Plant.new(:name => "Fenchel", :family => Family.find_by_name("Doldenblütler")),
    Plant.new(:name => "Feuerbohnen", :family => Family.find_by_name("Schmetterlingsblütler")),
    Plant.new(:name => "Getreide", :family => Family.find_by_name("Gräser")),
    Plant.new(:name => "Gurken"),
    Plant.new(:name => "Herbstrübe", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Kartoffeln", :family => Family.find_by_name("Nachtschattengewächse")),
    Plant.new(:name => "Kefen", :family => Family.find_by_name("Schmetterlingsblütler")),
    Plant.new(:name => "Knoblauch", :family => Family.find_by_name("Liliengewächse")),
    Plant.new(:name => "Kohlrabi", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Krautstiel", :family => Family.find_by_name("Gänsefussgewächse")),
    Plant.new(:name => "Kresse", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Kürbis", :family => Family.find_by_name("Kürbisgewächse")),
    Plant.new(:name => "Lattich", :family => Family.find_by_name("Körbchenblütler")),
    Plant.new(:name => "Lauch", :family => Family.find_by_name("Liliengewächse")),
    Plant.new(:name => "Mairübe", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Nüsslisalat"),
    Plant.new(:name => "Pak Choi", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Pastinaken", :family => Family.find_by_name("Doldenblütler")),
    Plant.new(:name => "Patisson", :family => Family.find_by_name("Kürbisgewächse")),
    Plant.new(:name => "Peperoni", :family => Family.find_by_name("Nachtschattengewächse")),
    Plant.new(:name => "Petersilie", :family => Family.find_by_name("Doldenblütler")),
    Plant.new(:name => "Puffbohnen", :family => Family.find_by_name("Schmetterlingsblütler")),
    Plant.new(:name => "Radisli", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Randen", :family => Family.find_by_name("Gänsefussgewächse")),
    Plant.new(:name => "Rettich", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Rotkabis", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Rucola"),
    Plant.new(:name => "Rüebli", :family => Family.find_by_name("Doldenblütler")),
    Plant.new(:name => "Salat", :family => Family.find_by_name("Körbchenblütler")),
    Plant.new(:name => "Salatzwiebeln", :family => Family.find_by_name("")),
    Plant.new(:name => "Schalotten", :family => Family.find_by_name("Liliengewächse")),
    Plant.new(:name => "Schnittmangold", :family => Family.find_by_name("Gänsefussgewächse")),
    Plant.new(:name => "Schnittsalat"),
    Plant.new(:name => "Schwarzwurzeln", :family => Family.find_by_name("Körbchenblütler")),
    Plant.new(:name => "Sellerie", :family => Family.find_by_name("Doldenblütler")),
    Plant.new(:name => "Spinat", :family => Family.find_by_name("Gänsefussgewächse")),
    Plant.new(:name => "Stangenbohnen", :family => Family.find_by_name("Schmetterlingsblütler")),
    Plant.new(:name => "Tomaten", :family => Family.find_by_name("Nachtschattengewächse")),
    Plant.new(:name => "Topinambur", :family => Family.find_by_name("Körbchenblütler")),
    Plant.new(:name => "Weisskabis", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Wirz", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Wosenkohl", :family => Family.find_by_name("Kreuzblütler")),
    Plant.new(:name => "Zucchetti", :family => Family.find_by_name("Kürbisgewächse")),
    Plant.new(:name => "Zuckerhut", :family => Family.find_by_name("Körbchenblütler")),
    Plant.new(:name => "Zuckernais", :family => Family.find_by_name("Gräser")),
    Plant.new(:name => "Zwiebel", :family => Family.find_by_name("Liliengewächse"))
  ]

  def self.up
    @plants.each { |p|  p.save  }
  end

  def self.down
    @plants.each { |p|
      saved = Plant.find_by_name(p.name)
      if saved
        saved.delete
      end

    }
  end
end
