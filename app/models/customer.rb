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

  def self.all
  	@@all
  end

  def add_review(restaurant, content, rating, customer)
  	Review.new(restaurant, content, rating, self)
  end

  def num_reviews
  	Review.all.select do |customer|
  		customer.customer == self
  	end.length
  end

  def restaurants
  	Review.all.select do |customer|
  		customer.restaurant

  		# restaurant
  	end.uniq
  end
  # Review.all[1].restaurant

end
