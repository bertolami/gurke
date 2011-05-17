class RemoveWrongFamilyData < ActiveRecord::Migration
   @families =  [
    Family.new(:name => "Nüsslisalat" ,:energy => "Schwachzehrer"),
    Family.new(:name => "Gurken",  :energy => "Schwachzehrer"),
    Family.new(:name => "Schnittsalat",  :energy => "Schwachzehrer"),
    Family.new(:name => "Salatzwiebeln",  :energy => "Schwachzehrer")
  ]
  def self.up
    @families.each do |f|
      saved = Family.find_by_name(f.name)
      saved.delete
    end
  end

  def self.down
    @families.each do |f|
      f.save
    end
  end
end
