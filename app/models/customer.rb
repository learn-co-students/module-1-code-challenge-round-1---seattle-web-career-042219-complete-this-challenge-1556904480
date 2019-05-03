class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def add_review(restaurant, review)
    Review.new(restaurant, self, review)
  end

  def num_reviews
    Review.all.select { |element|
      element.customer == self
    }.length
  end

  def restaurants
    Review.all.collect { |element|
      if element.customer == self
        element.restaurant
      end
    }.uniq
  end

  # def self.find_by_name(name)
  #   Customer.all.find { |n|
  #     n.full_name == name
  #   }
  # end

  def self.all
    @@all
  end
end
