class DateInYear
  attr_reader :day, :month

  def initialize(day, month )
    @day = day
    @mont= month
  end

  def equal?(other)
    other.day == @day && other.month == @month
  end
end