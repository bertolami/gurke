class DateInYear
  attr_reader :day, :month

  def initialize(day, month )
    @day = day
    @month= month
  end

  def ==(other)
    other != nil and other.class == self.class and other.day == @day and other.month == @month
  end
  def to_s
    "#{@day}. #{@month}"
  end
end