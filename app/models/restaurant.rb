class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.map do |r|
      r.customer
    end.uniq
  end

  def reviews
    Review.all.select do |r|
      r.restaurant == self
    end
  end


end
