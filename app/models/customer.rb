class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
  Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.num_reviews.map do |res|
      res.restaurant
    end.uniq
  end

  def self.find_all_by_first_name(name)
    @@all.select do |cus|
      cus.first_name == name
    end
  end

  #didn't have time to finish the rest of the class methods


end
