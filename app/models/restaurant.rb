class Restaurant

  @@all = []

  attr_reader :name

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
    arr = reviews.map {|review| review.rating}
    arr.sum.to_f/arr.length
  end

  def longest_review
    arr = reviews.map {|review| review.content}
    arr.max_by {|content| content.length}
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

end
