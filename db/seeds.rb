puts '---------------------'
puts 'Cleaning database'
User.destroy_all
Account.destroy_all

puts '---------------------'
puts 'Creating Users'
user1 = User.create!(email: 'user@gmail.com', password: 'password', first_name: 'Jérémy', last_name: 'bst')

puts '---------------------'
puts 'Creating Account'
Account.create!(bank: "Caisse d'épargne", name: 'Compte courrant', fund: 0, user: user1)
puts '---------------------'
