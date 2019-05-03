class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select{|r| r.customer == self}
  end

  def num_reviews
    self.reviews.count
  end

  def restaurants
    self.reviews.map{|r| r.restaurant}.uniq
  end

  def self.find_by_name(name)
    @@all.find{|c| c.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@all.select{|c| c.first_name == name}
  end

  def self.all_names
    @@all.collect{|c| c.full_name}
  end

end
