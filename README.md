
Mod 1 cli project name - TBD

##Domain Model

user-< OrderItem >-MenuItem
____________________________________
##user Stories

👨🏻‍💻User will be able to:

make an account (Create)/login as a user?
browse menu items (Read)
view prices on the menu (Read)
make an order (Create)
view their order (Read)
change their order (Update)
cancel their order (Delete)
____________________________________
##tables

User:
  t.string :name
  t.timestamp

Menu
  t.integer :price
  t.string :name
  t.string :food_type
  t.timestamp

Order
  user_id
  Menu_id
____________________________________

