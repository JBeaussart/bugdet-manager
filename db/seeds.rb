# require 'faker'

puts '---------------------'
puts 'Cleaning database'
User.destroy_all
Account.destroy_all
BankTransaction.destroy_all

puts '---------------------'
puts 'Creating Users'
user1 = User.create!(email: 'user@gmail.com', password: '123456')

puts '---------------------'
puts 'Creating Accounts & BankTransactions'
names = ['Compte courrant', 'Livret A', 'PEL', 'Compte commun', 'Livret B']
3.times do
  account = Account.create!(bank: Faker::Company.name, name: names.sample, fund: Faker::Number.decimal(l_digits: 3, r_digits: 2), user: user1)

  tags = %w(Logement Vacances Voiture Abonnement Animaux Santé Loisir CB Autre)
  60.times do
    BankTransaction.create!(date: Faker::Date.between(from: '2022-01-01', to: '2022-04-30'), amount: Faker::Number.between(from: -300, to: -1), tag: tags.sample, comment: Faker::Lorem.sentence(word_count: 4), account: account)
  end

  dates = ['05/01/2022', '05/02/2022', '05/03/2022', '05/04/2022']
  dates.each do |date|
    BankTransaction.create!(date: date, amount: Faker::Number.between(from: 1550, to: 3260), tag: 'Revenu', comment: 'Salaire', account: account)
  end
end
