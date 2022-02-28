puts "---------------------"
puts "Cleaning database"
User.destroy_all

puts "---------------------"
puts "Creating Users"
User.create!(email: "user@gmail.com", password: "password", first_name: "Jérémy", last_name: "bst")
