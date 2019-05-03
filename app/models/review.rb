

class Review

  @@all = []

  attr_reader :review, :author

  def initialize(review)
    @@all << self
    @review = review
  end

  def self.all
    @@all
  end

  def self.customer
  
    # returns the customer object for that given review
    # Once a review is created, I should not be able to change the author
  end

  def self.restaurant
  #  - returns the restaurant object for that given review
  #  - Once a review is created, I should not be able to change the restaurant
  end

  def self.rating
    #- returns the star rating for a restaurant. This should be an integer from 1-5
  end

  def self.content
    #- returns the review content, as a string, for a particular review
  end
end
