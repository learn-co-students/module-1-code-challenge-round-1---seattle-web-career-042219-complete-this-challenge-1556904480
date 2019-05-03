require 'pry'
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
      if review.customer == self
        review.restaurant
      end
    end.compact.uniq
  end

  def self.find_by_name(name)
    name_array = name.split
    new_first = name_array[0]
    new_last = name_array[1]

    Customer.all.find do |customer|
      new_first == customer.first_name && new_last == customer.last_name
    end

  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

end
