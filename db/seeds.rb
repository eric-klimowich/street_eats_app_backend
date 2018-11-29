# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Restaurant.destroy_all
Comment.destroy_all

u1 = User.create(name: "Eric", location: "Brooklyn", fav_food: "Pizza")
u2 = User.create(name: "Deepa", location: "Brooklyn", fav_food: "Smoothie")
u3 = User.create(name: "Keith", location: "Brooklyn", fav_food: "Burger")

r1 = Restaurant.create(name: "Gorilla Cheese", location: "Upper West Side", food_type: "Cheese sandwiches", likes: 0, photo: "https://gorillacheesenyc.com/wp-content/uploads/2017/01/slide0.jpg", user_id: 1)
r2 = Restaurant.create(name: "Dosa Truck", location: "Battery Park", food_type: "Indian", likes: 0, photo: "https://i.pinimg.com/originals/d4/a0/11/d4a011590be839303fb24bbbef9251f0.jpg", user_id: 2)
r3 = Restaurant.create(name: "Halal Guys", location: "Upper East Side", food_type: "Halal", likes: 0, photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlgehLKdEMTLrYNR160WvREte_U7ikIaeoR8o4EryjaUYTU3JQ", user_id: 2)
r4 = Restaurant.create(name: "Nathan's", location: "Battery Park", food_type: "Hot Dogs", likes: 0, photo: "https://nathansfamous.com/images/biz2.jpg", user_id: 3)

c1 = Comment.create(content: "Cheesy", likes: 0, dislikes: 0, restaurant_id: 1, user_id: 1)
c2 = Comment.create(content: "Spicy", likes: 0, dislikes: 0, restaurant_id: 2, user_id: 2)
c3 = Comment.create(content: "White sauce", likes: 0, dislikes: 0, restaurant_id: 3, user_id: 1)
c4 = Comment.create(content: "Hot Doggy", likes: 0, dislikes: 0, restaurant_id: 4, user_id: 3)
c4 = Comment.create(content: "Mustardy", likes: 0, dislikes: 0, restaurant_id: 4, user_id: 3)
