class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    Review.all.select {|customer| customer.restaurant == self}.uniq
  end

  def reviews
    Review.all.map {|review| review.restaurant == self}
  end

  def self.all
    @@all
  end

end
