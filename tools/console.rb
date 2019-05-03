require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jamal = Customer.new('Jamal', 'Shareef')
jamal_1 = Customer.new('Jamal', 'Shareef')
jamal_2 = Customer.new('Jamal', 'Banks')
princess = Customer.new('Princess', 'Shareef')
naeem = Customer.new("Na'eem", 'Shareef')
tania = Customer.new('Tania', 'Campbell')
lloryn = Customer.new('Lloryn', 'Hubbard')

maneki = Restaurant.new('Maneki')
kedai = Restaurant.new('Kedai Makkan')
kedai_1 = Restaurant.new('Kedai Makken')
red_robin = Restaurant.new("Red Robin")
cheesecake = Restaurant.new('Cheesecake Factory')
nani = Restaurant.new('Nani')

jamal.add_review(kedai, 'This place was very good, excellent rice and meat, a bit crowded though', 4)
naeem.add_review(cheesecake, 'Solid meal', 5)
tania.add_review(red_robin, 'I was not impressed with the service, it could have been much better, maybe the staff were all having a bad day, who knows', 3)
lloryn.add_review(red_robin, 'Staff was nice, had a great party', 4)
princess.add_review(red_robin, 'Endless fries, cannot beat it', 4)
tania.add_review(red_robin, "Had a better experience this time", 3)
tania.add_review(maneki, 'Superb, amazing historical restaurant', 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
