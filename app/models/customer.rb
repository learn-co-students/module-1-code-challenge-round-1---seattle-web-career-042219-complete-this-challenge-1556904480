
class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def self.all
  	@@all
  end

  def add_review(restaurant, content, rating)
  	Review.new(restaurant, content, rating, self)
  end

#Return the total number of reviews that a customer(cust1) has authored
  def num_reviews
  	total_reviews.count
  end

  def total_reviews# helper method
    Review.all.select do |customer|
      customer.customer == self
    end    
  end

#Return a *unique* array of all restaurants a customer(cust1) has reviewed
  def restaurants
  	total_reviews.map do |review|
  		review.restaurant
  	end.uniq
  end

#Returns the **first customer** whose full name matches
  def self.find_by_name(name)
  	@@all.select do |custo|
      if custo.full_name.downcase == name.downcase
  			custo
  		end
  	end  	
  end

# given a string of a first name, 
# returns an **array** containing all
# customers with that first name
  def self.find_all_by_first_name(name)
    @@all.select do |x|
      x.first_name.downcase == name.downcase
        # binding.pry
    end
  end


  def self.all_names
    array = []
    @@all.select do |x|
      array << x.full_name
    end
    array
  end


end



