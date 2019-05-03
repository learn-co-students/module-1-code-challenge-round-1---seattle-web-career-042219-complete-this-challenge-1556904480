class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select{|reviews|
       reviews.customer == self
  }.count
  end

  def restaurants
    Review.all.map{|reviews|
       if reviews.customer == self
          reviews.restaurant.name
       end
      }.uniq.compact
  end

  def self.find_by_name(name)
    f_l_name = name.split
    self.all.select{|customers|
      customers.first_name == f_l_name[0] && customers.last_name == f_l_name[1]
    }

  end

  def self.find_all_by_first_name(name)
    self.all.select{|customers|
  customers.first_name == name}
  end

  def self.all_names
    self.all.select{|customers|
    customers.first_name + customers.last_name
    }
  end

end
