puts '---------------------'
puts 'Cleaning database'
User.destroy_all
Account.destroy_all

puts '---------------------'
puts 'Creating Users'
user1 = User.create!(email: 'user@gmail.com', password: '123456', first_name: 'Jérémy', last_name: 'bst')
user2 = User.create!(email: 'user2@gmail.com', password: '123456', first_name: 'Etienne', last_name: 'lht')
