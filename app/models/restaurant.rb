class Restaurant
  attr_reader :restaurant_name

  @@all = []

  def initialize(restaurant_name)
    @restaurant_name = restaurant_name
    @@all << self
  end

  def self.all
  	@@all
  end

#Return a *unique* list of all customers who have reviewed a particular restaurant.
  def customers
  	reviews.map do |review|  #can do self.reviews but ruby is smart and knows it.
  		review.customer
  	end.uniq
  end

  def reviews #all reviews
	Review.all.select do |review|
  		review.restaurant == self
  	end
  end

#Returns the average star rating for a restaurant based on its reviews
  def longest_review
  	reviews.max_by {|review| review.content.length }.content
  end

  def average_star_rating
  	reviews.sum {|review| review.rating}/reviews.length.to_f
  end

#- `Restaurant.find_by_name(name)`
  # - given a string of restaurant name, 
  # returns the first restaurant that matches
  def self.find_by_name(name)
    @@all.find do |x|
      x.restaurant_name.downcase == name.downcase
    end
  end








end
