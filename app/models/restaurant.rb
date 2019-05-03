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

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    sum = 0.0
    reviews.each {|review| sum += review.rating}
    sum / reviews.length
  end

  def longest_review
    target = ""
    num = 0;
    reviews.each do |review|
      if num < review.content.length
        target = review.content
        num = review.content.length
      end
    end
    target
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

end
