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

  def self.find_by_name(name)
    self.all.select do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    Review.all.select do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    avg_rating = 0
    Review.all.each do |review|
      if review.restaurant == self
        avg_rating += review.rating
      end
    end
    avg_rating / Review.length
  end

  def longest_review
  end
end
