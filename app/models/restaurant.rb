class Restaurant
  attr_reader :name

  @@all = []

  def initialize
    @name = name
    @@all << self
  end

  def customer_review
    Review.uniq {|reviews| reviews.restaurant}
  end

  def all_reviews
    Review.map {|reviews| reviews.restaurant}
  end

  def self.find_by_name 
    Review.find {|name| name == self}
  end

end
