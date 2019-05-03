class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
  	Review.new(self, restaurant, rating, content)
  end

  def num_reviews
  	Review.all.select do |review|
  		review.customer == self
  	end.count
  end

  def restaurants
  	Review.all.map do |review|
  		review.customer == self ? review.restaurant : nil
  	end.compact.uniq
  end

  def self.find_by_name(full_name)
  	self.all.find do |cust|
  		cust.full_name == full_name
  	end
  end

  def self.find_all_by_first_name(first_name)
  	self.all.select do |cust|
  		cust.first_name == first_name
  	end
  end

  def self.all_names
  	self.all.map do |cust|
  		cust.full_name
  	end
  end

  def self.all
  	@@all
  end
end
