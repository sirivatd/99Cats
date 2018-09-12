# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
CatRentalRequest.destroy_all

cat1 = Cat.create!(birthdate: '2015/01/20', color: 'grey', name: 'bob', sex: 'M', description: 'I am 3 and grey')
cat2 = Cat.create!(birthdate: '2014/01/20', color: 'white', name: 'jow', sex: 'M', description: 'I am 4 and white')
cat3 = Cat.create!(birthdate: '2013/01/20', color: 'green', name: 'lisa', sex: 'F', description: 'I am 5 and green')

CatRentalRequest.create!(cat_id: cat1.id, start_date: '2015/01/20', end_date: '2016/01/20')
CatRentalRequest.create!(cat_id: cat1.id, start_date: '2015/01/20', end_date: '2017/01/20')
CatRentalRequest.create!(cat_id: cat2.id, start_date: '2015/01/20', end_date: '2016/01/20')
CatRentalRequest.create!(cat_id: cat2.id, start_date: '2013/01/20', end_date: '2014/01/20')
CatRentalRequest.create!(cat_id: cat3.id, start_date: '2015/01/20', end_date: '2015/01/20')
