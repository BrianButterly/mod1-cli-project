

OrderItem.destroy_all
User.destroy_all
MenuItem.destroy_all

# User Instances
puts "🤯 Seeding Users"
u1 = User.create(name: "Brian")
u2 = User.create(name: "Mizzy")
u3 = User.create(name: "Victor")
u4 = User.create(name: "Ian")

# Menu Item Instances
puts "🌮 Seeding Menu Items"
m1 = MenuItem.create(name: "Eggs", price:  "$2", food_type: "Breakfast")
m2 = MenuItem.create(name: "Bacon", price: "$2", food_type: "Breakfast")
m3 = MenuItem.create(name: "Pancakes", price: "$4", food_type: "Breakfast")
m4 = MenuItem.create(name: "Chicken Sandwich", price: "$8", food_type: "Lunch")
m5 = MenuItem.create(name: "Salad", price: "$8", food_type: "Lunch")
m6 = MenuItem.create(name: "Tacos", price: "$10", food_type: "Lunch")
m7 = MenuItem.create(name: "Steak", price:  "$18", food_type: "Dinner")
m8 = MenuItem.create(name: "Steamed Mussels", price: "$16", food_type: "Dinner")
m9 = MenuItem.create(name: "Pork Chop", price: "$12", food_type: "Dinner")


# Order Item Instances
puts "🍽 Seeding Order Items"
o1 = OrderItem.create(user_id: u1.id, menu_item_id: m1.id)
o2 = OrderItem.create(user_id: u2.id, menu_item_id: m2.id)
o3 = OrderItem.create(user_id: u3.id, menu_item_id: m3.id)
o4 = OrderItem.create(user_id: u4.id, menu_item_id: m4.id)
o5 = OrderItem.create(user_id: u3.id, menu_item_id: m5.id)
o6 = OrderItem.create(user_id: u2.id, menu_item_id: m6.id)
o7 = OrderItem.create(user_id: u1.id, menu_item_id: m1.id)
o8 = OrderItem.create(user_id: u1.id, menu_item_id: m3.id)
o9 = OrderItem.create(user_id: u4.id, menu_item_id: m7.id)
o10 = OrderItem.create(user_id: u4.id, menu_item_id: m9.id)

puts "Schwifty"
