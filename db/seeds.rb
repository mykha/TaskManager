# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create!(Name: 'Иванов И.И.', email: 'ivanov_ii@TaskManager.com')
# . . .
User.create!(Name: 'Федоров А.Ф.',
             email: 'fedorov_af@TaskManager.com')

# . . .
User.create!(Name: 'Кузькин К.В.',
             email: 'kuzkin_kv@TaskManager.com')
# . . .
User.create!(Name: 'Фоменко Д.В.',
             email: 'fomenko_dv@TaskManager.com')
# . . .
User.create!(Name: 'Одминов С.С.',
             email: 'admin@TaskManager.com')


