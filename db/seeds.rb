# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Item.create(id:2,genre_id:'3',name:'サンプル',image_id:'',introduction:'サンプルサンプル',price:'1234',is_active:'treu',created_at:'',updated_at:'')
# select * from items;

Customer.create(email:'T@gmail',encrypted_password:'TTTTTT',reset_password_token:'1',last_name:'たく',first_name:'み',last_name_kana:'タク',first_name_kana:'ミ',postal_code:'111-1111',address:'埼玉県さいたまサイタマ',telephone_number:'111-1111-1111',)
# select * from Customers;

