# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
devin = User.create(username: 'devin', email: 'devin@example.com', password: 'yourface')
bar = List.create(name: 'bar', user_id: devin.id)
whiskey = Category.create(name: 'whiskey', list_id: bar.id)
good = Subcategory.create(name: 'good whiskey', category_id: whiskey.id)
cheap = Subcategory.create(name: 'cheap whiskey', category_id: whiskey.id)
jwb = Item.create(name: 'Johnny Walker Blue', subcategory_id: good.id)
jd = Item.create(name: 'Jack Daniels', subcategory_id: cheap.id)