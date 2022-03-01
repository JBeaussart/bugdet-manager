puts '---------------------'
puts 'Cleaning database'
User.destroy_all
Account.destroy_all
Transaction.destroy_all

puts '---------------------'
puts 'Creating Users'
user1 = User.create!(email: 'user@gmail.com', password: '123456', first_name: 'Jérémy', last_name: 'bst')
user2 = User.create!(email: 'user2@gmail.com', password: '123456', first_name: 'Etienne', last_name: 'lht')

puts '---------------------'
puts 'Creating Account'
account1 = Account.create!(bank: "Caisse d'épargne", name: 'Compte courrant', fund: 652, user: user1)
account2 = Account.create!(bank: "BNP", name: 'Compte commun', fund: 1235, user: user2)
