class Review

  attr_accessor :stars, :content
  attr_reader :restaurant, :customer

  @@all = []

  def initialize(customer:, restaurant:, stars:, content:)
    @customer = customer
    @restaurant = restaurant
    @stars = stars
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

end
