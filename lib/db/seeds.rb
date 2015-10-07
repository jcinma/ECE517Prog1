# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create!(email: 'admin@library.com', password: 'qwerty123', first_name: 'Default', last_name: 'Admin')
Book.create(ISBN: '1', title: 'Moby Dick', description: 'Ishmael', author: 'Herman Melville', status: 'Available', suggested: 'false')
