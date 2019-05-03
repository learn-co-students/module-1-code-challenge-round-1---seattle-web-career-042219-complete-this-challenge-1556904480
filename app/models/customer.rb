class Customer
  attr_reader :first_name, :last_name

  @@all =[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def add_review(restaurant, content, rating)
    Review.new(restaurant,self,rating)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurant
    Review.all.map {|review| review.restaurant == self}.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def find_by_name(name)
    Customer.all.each do |name|
      if name == full_name
      puts full_name
      end
    end
  end

end
