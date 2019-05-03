class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name:)
    @name = name

    @@all << self
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
  #   count = 0.0
  #   stars = 0.0
  #   self.reviews.stars.collect { |element|
  #     count += 1
  #     stars += element
  #   }
  #   stars/count
  # end

   def self.find_by_name(name)
    self.all.find { |n|
      n.name == name
    }
  end

  def self.all
    @@all
  end

end
