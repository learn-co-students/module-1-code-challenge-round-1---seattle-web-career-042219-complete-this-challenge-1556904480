class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name:)
    @name = name
  end

  def customers
    Review.all.collect { |element|
      if element.restaurant == self
        element.customer
      end
    }.uniq
  end

  def reviews
    Review.all.collect { |element|
      if element.restaurant == self
        element
      end
    }
  end

  # def average_star_rating
  #   self.reviews.collect { |review|
  #     review.review
  #   }
  # end
  #
  # def self.find_by_name(rest_name)
  #   Restaurant.all.find { |n|
  #     n.name == rest_name
  #   }
  # end

  def self.all
    @@all
  end

end
