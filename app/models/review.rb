class Review
  attr_accessor :restaurant, :content, :rating, :customer

  @@all = []
  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end


  #incomplete customer, stack level too deep currently
#   def customer
#     @@all.select{|reviews|
#         if reviews == self
#             reviews.customer
#         end
#     }
#   end


end

