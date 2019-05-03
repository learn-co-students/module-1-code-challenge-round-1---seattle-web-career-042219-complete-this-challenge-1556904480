require 'pry'
class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.map do |review|
      if review.restaurant == self
        review.customer
      end
    end.compact.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    total_score = 0.0
    total_reviews = 0.0

    Review.all.each do |review|
      if review.restaurant == self
        total_score += review.rating
        total_reviews += 1
      end
    end

    total_score.to_f / total_reviews

  end

  def longest_review
    self.reviews.sort_by do |review|
      -review.content.length
    end.first
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
