# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all 

cat1 = Cat.create!(name: 'Whiskers', color: 'black', sex: "M", birth_date: '2015/01/20')
cat2 = Cat.create!(name: 'Max', color: 'orange', sex: "F", birth_date: '2014/01/20')
cat3 = Cat.create!(name: 'Fanny', color: 'orange', sex: "F", birth_date: '1988/01/20')
cat4 = Cat.create!(name: 'Maybe', color: 'white', sex: "M", birth_date: '1990/08/06')


User.destroy_all
  
  elliot = User.create!(user_name: "all_knowing_ellio", password: "allthesame")
  ryan = User.create!(user_name: "will_climb_rocks", password: "allthesame")
  dean = User.create!(user_name: "dean_machine", password: "allthesame")
  angela = User.create!(user_name: "loves_capy", password: "allthesame")
  charlos = User.create!(user_name: "charlos_gets_buckets", password: "allthesame")
  alissa = User.create!(user_name: "cow_luva",  password: "allthesame")
  joe = User.create!(user_name: "trader_joes_4lyf3", password: "allthesame")
  walker = User.create!(user_name: "wakka_wakka", password: "allthesame")
  mike = User.create!(user_name: "like_mike", password: "allthesame")
  michelle = User.create!(user_name: "michelle_bell", password: "allthesame")
  vanessa = User.create!(user_name: "the_vanessa", password: "allthesame")
  jen = User.create!(user_name: "jen_ken_intensifies", password: "allthesame")
  big_company = User.create!(user_name: "instructors_rock", password: "allthesame")