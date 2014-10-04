# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Item.destroy_all

u1 = User.create(:name => 'Jacqui Mikulasev', :email => 'j.mikulasev@hotmail.com', :password => 'yellow')
u1 = User.create(:name => 'Angela Mikulasev', :email => 'anniemik@hotmail.com', :password => 'pink')
u1 = User.create(:name => 'Adam Mikulasev', :email => 'magik_electrik_musik@hotmail.com', :password => 'blue')

i1 = Item.create(:name => 'shirt', :image_url => 'http://www.bardot.com.au/files/product/images/439954/28204TB-FRONT000.jpg')
i2 = Item.create(:name => 'pants', :image_url => 'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=64181961')
i2 = Item.create(:name => 'jacket', :image_url => 'http://www.bardot.com.au/files/product/images/403527/9631jb1-denim-front-.jpg')

c1 = Category.create(:name => 'new')
c2 = Category.create(:name => 'used')
c3 = Category.create(:name => 'womens')


