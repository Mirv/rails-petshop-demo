require 'ffaker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BREEDS = ['Afegão Hound', 'Affenpinscher', 'Airedale Terrier', 'Akita',
 'American Staffordshire Terrier', 'Husky Siberiano', 'Basenji', 'Basset Hound', 'Beagle',
 'Beagle Harrier', 'Bearded Collie', 'Bedlington Terrier', 'Bichon Frisé', 'Bloodhound',
 'Bobtail', 'Boiadeiro Australiano', 'Boiadeiro Bernês', 'Border Collie', 'Border Terrier',
 'Borzoi', 'Boston Terrier', 'Boxer', 'Buldogue Francês', 'Buldogue Inglês', 'Bull Terrier ',
 'Bulmastife']

NAMES = ['Cusco', 'Fred', 'Baki', 'Kim', 'Max', 'Molly', 'Buddy', 'Bella', 'Jake',
  'Lucy', 'Bailey', 'Maggie', 'baronesa', 'Jake', 'Balley', 'Rocky', 'Zoe', 'Lola',
  'Gracie', 'Sashe', 'Coco', 'Chanel', 'Princess', 'Shadow', 'Sam']

AGES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

GENDERS = ['male', 'female']

puts "======> Creating basic animals ... "
1000.times do |index|
  Animal.create!(
    name: NAMES.sample,
    breed: BREEDS.sample,
    last_checkin: DateTime.now - index.days,
    gender: GENDERS.sample,
    owner: FFaker::Name.name,
    owner_phone: FFaker::PhoneNumberBR.phone_number.delete('^0-9'),
    castrated: [true, false].sample,
    birthday: DateTime.now - AGES.sample.years
  )
end
puts "done! \n"

puts "======> Creating basic Admins ... "
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
puts "done! \n"
