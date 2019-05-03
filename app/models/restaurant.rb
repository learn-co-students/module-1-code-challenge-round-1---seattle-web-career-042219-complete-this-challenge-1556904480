class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |res|
      res.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |customer|
      customer.customer
    end.uniq
  end

  def average_star_rating
    arr = self.reviews.map do |rating|
      rating.rating
    end
    arr.sum / arr.count
  end

  #didn't have time to finish this method
  def longest_review
  end

end
