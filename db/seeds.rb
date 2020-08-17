
OrderItem.destroy_all
User.destroy_all
MenuItem.destroy_all

# User Instances
puts "🤯 Seeding Users"
u1 = User.create(name: "Brian", age: 34)
u2 = User.create(name: "Mizzy", age: 22)
u3 = User.create(name: "Victor", age: 26)
u4 = User.create(name: "Ian", age: 100)

# Menu Item Instances
puts "🌮 Seeding Menu Items"
m1 = MenuItem.create(name: "eggs", price: 4, food_type: "Breakfast")
m2 = MenuItem.create(name: "salad", price: 10, food_type: "Lunch")
m3 = MenuItem.create(name: "steak", price: 18, food_type: "Dinner")
m4 = MenuItem.create(name: "pancakes", price: 8, food_type: "Breakfast")
m5 = MenuItem.create(name: "chicken sandwich", price: 12, food_type: "lunch")
m6 = MenuItem.create(name: "steamed mussels", price: 24, food_type: "Dinner")

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

puts "Schwifty"









