
require_relative 'config/environment'

# def clear!
#     puts `clear`
# end


puts "Welcome to our app!"
print "Enter name: "
user_name = gets.chomp



# current_user = User.find_or_create_by(name: user_name)


# clear!

# puts "Welcome #{current_user.name}!"
# puts "What would you like to do next?"
# puts "1. View profile"          #brian, orders, 
# puts "2. Menu items"            #whole menu read only, exit back to previous menu
# puts "3. Make an order"         #whole menu with numbers inout menu item id

# print "Enter your selection: "
# input = gets.chomp
# clear!

# case input
# when "1"
#     puts "#{current_user.name}'s Profile Page"
#     puts "previous orders"
#     puts "exit"

# when "2"
#     puts "menu items"
#     puts "Breakfast: Eggs"
#     puts "           Pancakes"
#     puts "exit"
# when "3"
#     puts "Make an order"
#     puts "select menu items"
#     puts "exit"

#     menu_item_id = gets.chomp
# end
#_____________________________________________________________
# `say hello, welcome to our app, please enter your name`

# prompt = TTY::Prompt.new
# name = prompt.ask("What is your name?") do |q|
#   q.required true
#   q.validate /\A\w+\Z/
#   q.modify   :capitalize
# end
# puts "Hello #{name}"

# `say "Hello #{name}"`

#_____________________________________________________________

