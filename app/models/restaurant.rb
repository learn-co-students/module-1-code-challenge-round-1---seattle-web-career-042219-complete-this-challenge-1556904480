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

  def average_star_rating
    total_stars = 0.0
    count = 0.0
     self.reviews.collect { |element|
       if element != nil
         element.stars
         total_stars += element.stars
         count += 1.0
       else
         element = 0
       end
     }
     total_stars/count
  end

   def self.find_by_name(name)
    self.all.find { |n|
      n.name == name
    }
  end

  def self.all
    @@all
  end

end
