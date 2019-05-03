require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Caleb', 'Watters')
c2 = Customer.new('Bob', 'Davidson')
c3 = Customer.new('Jon', 'Doe')
c4 = Customer.new('Sean', 'Watters')

r1 = Restaurant.new('Red Lobster')
r2 = Restaurant.new('TCBY')
r3 = Restaurant.new('Applebees')
r4 = Restaurant.new('Wendys')

c1.add_review(r1, 'It was garbage', 1)
c2.add_review(r2, 'Very tasty', 4)
c3.add_review(r3, 'Best food I have ever had', 5)
c4.add_review(r4, 'It was meh', 2)
c1.add_review(r2, 'It was terrible', 1)
c1.add_review(r3, 'It was indescribably bad', 1)
c1.add_review(r4, 'It was garbage', 1)

rev1 = Review.new(r4, c2, 'It was garbage', 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line