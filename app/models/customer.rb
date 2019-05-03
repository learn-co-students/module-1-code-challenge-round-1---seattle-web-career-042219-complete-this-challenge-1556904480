class Customer
  attr_reader :first_name, :last_name

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
    end.length
  end

  def all_my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    all_my_reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(name)
    arr = name.split(" ")
    first = arr[0]
    last = arr[1]
    Customer.all.find do |customer|
      customer.first_name == first && customer.last_name == last
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end 

end
