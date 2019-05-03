class Restaurant
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select{|r| r.restaurant == self}
  end

  def customers
    self.reviews.map{|r| r.customer}.uniq
  end

  def average_star_rating
    ratings = self.reviews.map{|r| r.rating}
    ratings.sum / ratings.count
  end

  def longest_review
    content_array = self.reviews.map{|r| r.content}
    content_array.sort_by{|r| r.length}
    content_array.last
  end

  def self.find_by_name(name)
    @@all.find{|r| r.name == name}
  end

end
