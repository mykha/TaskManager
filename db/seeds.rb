# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create!(Name: 'Иванов И.И.',
             email: 'ivanov_ii@TaskManager.com',
             user_foto:   'user1.png')
# . . .
User.create!(Name: 'Фкдоров А.Ф.',
             email: 'fedorov_af@TaskManager.com',
             user_foto:   'user2.png')

# . . .
User.create!(Name: 'Сидоров А.А.',
             email: 'sidorov_aa@TaskManager.com',
             user_foto:   'user3.png')
# . . .
User.create!(Name: 'Гвоздев И.Е.',
             email: 'gvozdev_ie@TaskManager.com',
             user_foto:   'user4.png')
# . . .
User.create!(Name: 'Ласточкина Н.Г.',
             email: 'lastochakina_ng@TaskManager.com',
             user_foto:   'user5.png')
Project.delete_all
Task.delete_all
project1 = Project.create(name: 'Робот Вертер')
Task.create!(name: 'Встретить Колю', project: project1)
Task.create!(name: 'Защитить Колю от пиратов', project: project1)
Project.create!(name: 'Алиса Селезнева')


