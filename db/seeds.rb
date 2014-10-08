# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Category.destroy_all
Item.destroy_all

u1 = User.create!(:name => 'Jacqui Mikulasev', :email => 'j.mikulasev@hotmail.com', :password => 'yellow')
u1 = User.create!(:name => 'Angela Mikulasev', :email => 'anniemik@hotmail.com', :password => 'pink')
u1 = User.create!(:name => 'Adam Mikulasev', :email => 'magik_electrik_musik@hotmail.com', :password => 'blue')

i1 = Item.create!(:name => 'jacket',:gender => 'womens', :condition => 'used',:size => '10', :image_url => 'http://www.bardot.com.au/files/product/images/403527/9631jb1-denim-front-.jpg')

i2 = Item.create!(:name => 'shirt',:gender => 'mens', :condition => 'new', :size => 'Medium', :image_url => 'http://www.bardot.com.au/files/product/images/439954/28204TB-FRONT000.jpg')

i3 = Item.create!(:name => 'pants',:gender => 'womens', :condition => 'new', :size => '8', :image_url => 'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=64181961')


Category.create! name: 'accessories'
Category.create! name: 'coats & jackets'
Category.create! name: 'denim'
Category.create! name: 'designer'
Category.create! name: 'dresses'
Category.create! name: 'jumpers'
Category.create! name: 'jeans'
Category.create! name: 't-shirts'
Category.create! name: 'tanks'
Category.create! name: 'jewellery'
Category.create! name: 'cardigans'
Category.create! name: 'jumpsuits'
Category.create! name: 'shirts'
Category.create! name: 'shoes'
Category.create! name: 'shorts'
Category.create! name: 'skirts'
Category.create! name: 'swimwear'
Category.create! name: 'pants'


