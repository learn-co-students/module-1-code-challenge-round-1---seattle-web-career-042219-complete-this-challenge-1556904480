class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
  	Review.all.map do |review|
  		review.restaurant == self ? review.customer : nil
  	end.compact.uniq
  end

  def reviews
  	Review.all.select do |review|
  		review.restaurant == self
  	end
  end

  def average_star_rating
  	ratings = self.reviews.map do |review|
  		review.rating
  	end
  	ratings.sum.to_f / ratings.count.to_f
  end

  def longest_review
  	length_array = self.reviews.map do |review|
  		review.content.length
  	end
  	self.reviews.find do |review|
  		review.content.length == length_array.max 
  	end.content
  end

  def self.find_by_name(name)
  	self.all.find do |rest|
  		rest.name == name
  	end
  end

  def self.all
  	@@all
  end

end
