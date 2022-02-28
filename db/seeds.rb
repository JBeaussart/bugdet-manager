puts '---------------------'
puts 'Cleaning database'
User.destroy_all
Account.destroy_all
Transaction.destroy_all

puts '---------------------'
puts 'Creating Users'
user1 = User.create!(email: 'user@gmail.com', password: 'password', first_name: 'Jérémy', last_name: 'bst')

puts '---------------------'
puts 'Creating Account'
account1 = Account.create!(bank: "Caisse d'épargne", name: 'Compte courrant', fund: 652, user: user1)
account2 = Account.create!(bank: "BNP", name: 'Compte commun', fund: 1235, user: user1)

puts '---------------------'
puts 'Creating Transaction'
Transaction.create!(date: '22/06/2022', amount: 120, tag: 'restaurant', comment: 'Restaurant famille', account: account1)
Transaction.create!(date: '06/03/2022', amount: 23, tag: 'animaux', comment: 'croquette chatou', account: account2)
