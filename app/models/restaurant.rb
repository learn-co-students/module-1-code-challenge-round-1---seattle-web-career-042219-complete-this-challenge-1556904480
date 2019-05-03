class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    Review.all.select {|reviews|
      reviews == self
    }
  end.uniq


  def self.find_by_name(name)
    Restaurant.all.find {|rest_name|
      rest_name == name
    }
    end



  def self.all
    @@all
  end
end
