
require_relative 'config/environment'
class Cli

def clear!
    puts `clear`
end

def login
puts "Welcome to our app!"
print "Enter name: "
user_name = gets.chomp
@current_user = User.find_or_create_by(name: user_name)
clear!
main_menu
end

def main_menu
puts "Welcome #{@current_user.name}!"
puts "What would you like to do next?"
puts "1. View profile"          
puts "2. Menu items"            
puts "3. Make an order"   
print "Enter your selection: "
input = gets.chomp
clear!
menu_select
end

    def menu_select
        case 
            when "1"
                puts "#{@current_user.name}'s Profile Page"
                puts "1. previous orders"
                puts "2. exit"
                print "Enter your selection: "
            when "2"
                puts "menu items"
                puts "Breakfast: Eggs"
                puts "           Pancakes"
                puts "exit"
            when "3"
                puts "Make an order"
                puts "select menu items"
                puts "exit"

                menu_item_id = gets.chomp
        end
    end
end # End of class

Cli.new.login 
