class AddBedsData < ActiveRecord::Migration
  @bed_sued = Bed.new(:name => 'Beetli Süd', :field_state => 'A' )
  @bed_nord =  Bed.new(:name => 'Beetli Nord', :field_state => 'B' )
  @bed_ost =  Bed.new(:name => 'Beetli Ost', :field_state => 'C' )
  @bed_west =  Bed.new(:name => 'Beetli West', :field_state => 'D' )

 
  @beds = [@bed_nord, @bed_ost, @bed_sued, @bed_west]

  def self.up
    @beds.each do |b|
      if not b.save
        raise "Not able to save #{b} - #{b.errors}"
      end
    end
    @bed_sued.plants << @bed_sued.possible_plants[0]
    @bed_sued.plants << @bed_sued.possible_plants[1]
    @bed_nord.plants << @bed_nord.possible_plants[0]
    @bed_ost.plants << @bed_ost.possible_plants[0]
    @beds.each do |b|
      if not b.save
        raise "Not able to save #{b} - #{b.errors}"
      end
    end
  end

  def self.down
    @beds.each do |b|
      bed = Bed.find_by_name(b.name)
      if(bed) 
        bed.delete
      end
    end
  end
end
