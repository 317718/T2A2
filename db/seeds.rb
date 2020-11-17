# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    {email: "a@b.com", password: "123456"},
    {email: "aa@b.com", password: "123456"},
    {email: "aaa@b.com", password: "123456"},
    {email: "aaaa@b.com", password: "123456"}
]

stores = [
    {name: "Astore", user_id: 1},
    {name: "Bstore", user_id: 2},
    {name: "Cstore", user_id: 3},
    {name: "Dstore", user_id: 4}
]

categories = [
    {name: "Snakes"},
    {name: "Lizards"},
    {name: "Enclosures"},
    {name: "Heating"},
    {name: "Equipment"},
    {name: "Feed"}
]

items = [
    {title: "Spotted python yearling", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 250, store_id: 1, category_id: 1},

    {title: "Coastal carpet python hatchies", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 350, store_id: 1, category_id: 1},

    {title: "Male jungle carpet 2yo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 350, store_id: 4, category_id: 1},

    {title: "Heat cord 2m as new", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 50, store_id: 1, category_id: 4},

    {title: "Heat mat small 25cm x 30cm", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 15, store_id: 1, category_id: 4},

    {title: "Ceramic bulbs set of 2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 50, store_id: 2, category_id: 4},

    {title: "Large heat mat 45x55cm", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", price: 40, store_id: 3, category_id: 4}
]

User.destroy_all
Store.destroy_all
Category.destroy_all
Item.destroy_all

User.create!(users)
Store.create!(stores)
Category.create!(categories)
Item.create!(items)