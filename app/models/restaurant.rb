class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)

    @name = name
      @@all << self
  end

  def self.all
    @@all
  end

  def customers
    #- Returns a **unique** list of all customers who have reviewed a particular restaurant.
  end

  def reviews
    @@all
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews\
  end

  def longest_review
  #returns the longest review content for a given restaurant
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
  end

end
