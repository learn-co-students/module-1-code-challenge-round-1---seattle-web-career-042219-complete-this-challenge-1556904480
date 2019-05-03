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
    Review.all.map{|reviews|
       if reviews.restaurant == self
          reviews.customer
       end
      }.uniq
  end

  def reviews
    Review.all.select{|reviews|
    reviews.restaurant == self
  }
  end

  def average_star_rating
    star_sum = Review.all.map{|reviews|
      if reviews.restaurant == self
        reviews.rating
      end
    }.compact.sum
       star_sum.to_f / self.reviews.count.to_f
  end

  def longest_review
    content_length = Review.all.map{|reviews|
      if reviews.restaurant == self
        reviews.content.length
      end
    }.compact.max
    Review.all.map{|reviews|
       if reviews.restaurant == self
          if reviews.content.length == content_length
            reviews.content
          end
       end
      }.uniq.compact

  end

  def self.find_by_name(r_name)
    self.all.select{|restaurants|
    restaurants.name == r_name
    }
  end




end
