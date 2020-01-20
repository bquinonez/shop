# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all


Item.create(image: "https://blank-sunglasses.com/wp-content/uploads/2019/11/laflame_black_front.png", name: "Flame Sunnies", price: 23)
Item.create(image: "https://dimg.dillards.com/is/image/DillardsZoom/mainProduct/natasha-accessories-circle-fringe-drop-earrings/00000000_zi_0ec1dfc5-ed5f-40ea-a5fd-a3d7e9b40461.jpg", name: "Chandeliers", price: 16)
Item.create(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ3Tpf_XV33W5hF1gopwP8pFH8s5L_j3Rj6vGO201ffLFcPW1duA&s" , name: "Clutch", price: 15)
Item.create(image: "https://anninc.scene7.com/is/image/LO/523038_0845?$pdp2x$", name: "Top Knot", price: 12)

User.create(name:"Bob", password: "abc")
User.create(name:"Tom", password: "abc")
User.create(name:"Bop", password: "abc")
User.create(name:"Boo", password: "abc")
User.create(name:"Sob", password: "abc")
User.create(name:"Blob", password: "abc")
User.create(name:"Rob", password: "abc")
User.create(name:"Bihelca", password: "abc")
User.create(name:"Sadia", password: "abc")
User.create(name:"Tris", password: "abc")

