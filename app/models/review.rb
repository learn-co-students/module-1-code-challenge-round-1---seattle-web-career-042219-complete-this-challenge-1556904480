class Review
    
    attr_accessor :rating, :content
    attr_reader :restaurant, :customer

    @@all = []

    def initialize(rating, content, restaurant,customer)
        @rating = rating
        @content = content
        @restaurant = restaurant
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end
  
end

