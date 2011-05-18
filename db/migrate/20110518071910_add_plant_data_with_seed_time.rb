class AddPlantDataWithSeedTime < ActiveRecord::Migration
   @plants = [
    Plant.new(:name => "Auberginen"),
    Plant.new(:name => "Blumenkohl"),
    Plant.new(:name => "Broccoli", :seed_from_month => 8, :seed_to_month => 9),
    Plant.new(:name => "Buschbohnen"),
    Plant.new(:name => "Chicoree", :seed_from_month => 9, :seed_to_month => 10),
    Plant.new(:name => "Chicorino Rosso", :seed_from_month => 5, :seed_to_month => 5),
    Plant.new(:name => "Chinakohl", :seed_from_month => 11, :seed_to_month => 11),
    Plant.new(:name => "Endivien"),
    Plant.new(:name => "Erbsen"),
    Plant.new(:name => "Fenchel"),
    Plant.new(:name => "Feuerbohnen", :seed_from_month => 10, :seed_to_month => 10),
    Plant.new(:name => "Getreide"),
    Plant.new(:name => "Gurken", :seed_from_month => 2, :seed_to_month => 4),
    Plant.new(:name => "Herbstrübe"),
    Plant.new(:name => "Kartoffeln"),
    Plant.new(:name => "Kefen"),
    Plant.new(:name => "Knoblauch"),
    Plant.new(:name => "Kohlrabi", :seed_from_month => 6, :seed_to_month => 7),
    Plant.new(:name => "Krautstiel", :seed_from_month => 10, :seed_to_month => 10),
    Plant.new(:name => "Kresse"),
    Plant.new(:name => "Kürbis"),
    Plant.new(:name => "Lattich"),
    Plant.new(:name => "Lauch", :seed_from_month => 5, :seed_to_month => 5),
    Plant.new(:name => "Mairübe"),
    Plant.new(:name => "Nüsslisalat", :seed_from_month => 4, :seed_to_month => 6),
    Plant.new(:name => "Pak Choi"),
    Plant.new(:name => "Pastinaken"),
    Plant.new(:name => "Patisson"),
    Plant.new(:name => "Peperoni"),
    Plant.new(:name => "Petersilie", :seed_from_month => 6, :seed_to_month => 9),
    Plant.new(:name => "Puffbohnen"),
    Plant.new(:name => "Radisli", :seed_from_month => 5, :seed_to_month => 9),
    Plant.new(:name => "Randen"),
    Plant.new(:name => "Rettich", :seed_from_month => 6, :seed_to_month => 6),
    Plant.new(:name => "Rotkabis", :seed_from_month => 6, :seed_to_month => 10),
    Plant.new(:name => "Rucola"),
    Plant.new(:name => "Rüebli"),
    Plant.new(:name => "Salat", :seed_from_month => 6, :seed_to_month => 6),
    Plant.new(:name => "Salatzwiebeln", :seed_from_month => 4, :seed_to_month => 5),
    Plant.new(:name => "Schalotten", :seed_from_month => 7, :seed_to_month => 7),
    Plant.new(:name => "Schnittmangold"),
    Plant.new(:name => "Schnittsalat", :seed_from_month => 4, :seed_to_month => 5),
    Plant.new(:name => "Schwarzwurzeln"),
    Plant.new(:name => "Sellerie"),
    Plant.new(:name => "Spinat"),
    Plant.new(:name => "Stangenbohnen"),
    Plant.new(:name => "Tomaten"),
    Plant.new(:name => "Topinambur"),
    Plant.new(:name => "Weisskabis"),
    Plant.new(:name => "Wirz", :seed_from_month => 8, :seed_to_month => 9),
    Plant.new(:name => "Wosenkohl"),
    Plant.new(:name => "Zucchetti", :seed_from_month => 7, :seed_to_month => 7),
    Plant.new(:name => "Zuckerhut", :seed_from_month => 9, :seed_to_month => 10),
    Plant.new(:name => "Zuckernais"),
    Plant.new(:name => "Zwiebel")
  ]

  def self.up
    @plants.each { |p|
      saved = Plant.find_by_name(p.name)
      if saved
        saved.seed_from_month = p.seed_from_month
        saved.seed_from_day = p.seed_from_day
        saved.seed_to_month = p.seed_to_month
        saved.seed_to_day = p.seed_to_day
        saved.maturity_time_in_days = p.maturity_time_in_days
        saved.variability_in_percent = p.variability_in_percent
        saved.save
      end
    }
  end

  def self.down
    @plants.each { |p|
      saved = Plant.find_by_name(p.name)
      if saved
        saved.seed_from_month = nil
        saved.seed_from_day = nil
        saved.seed_to_month = nil
        saved.seed_to_day = nil
        saved.maturity_time_in_days = nil
        saved.variability_in_percent = nil
        saved.save
      end
    }
  end
end
