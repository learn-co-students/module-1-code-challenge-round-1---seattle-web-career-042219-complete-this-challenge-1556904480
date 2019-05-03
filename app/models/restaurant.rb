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

  def customer
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    avg_star = reviews.map do |review|
      review.rating
    end
    avg_star.sum/avg_star.count
 end

 

end
