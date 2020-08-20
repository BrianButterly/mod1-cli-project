class Cli

    def clear!
        puts `clear`
    end

    def login
        clear! 
        puts "Welcome to 🥩FunkyMunch!"
        print "Enter name to login: "
        user_name = gets.chomp
        @current_user = User.find_by(name: user_name)
        clear!
        main_menu
    end

    def menu_items
        puts "Menu 🍴 Items"
        puts
        MenuItem.all.each do |menu_item_instance|
        menu_item_instance.display
        end
        puts
        puts "1. Return to Main Menu🚪"
        puts
        print "Enter your selection: "
        input = gets.chomp
        clear!
        main_menu
    end

    def previous_orders
        puts "Previous 🗄  Orders"
        puts
        puts @current_user.view_order
        puts
        puts "1. Edit order"
        puts "2. Delete order"
        puts "3. Return to Main Menu🚪"
        puts
        print "Enter your selection: "
        input = gets.chomp
        clear!
        case input
        when "1"
        when "2"
        when "3"
            main_menu
        end
    end

    def profile
        puts "#{@current_user.name}'s Profile 🌮 Page"
        puts
        puts "1. Previous orders"
        puts "2. Return to Main Menu🚪"
        puts
        print "Enter your selection: "
        input = gets.chomp
        clear!
        case input
        when "1" 
            previous_orders
        when "2"
            clear!
            main_menu
        end
    end

    def make_order
        puts "type the name of the menu item you would like" 
        MenuItem.all.each do |menu_item_instance|
        menu_item_instance.display
        end
        puts
        print "Enter your selection (case sensitive): "
        input = gets.chomp
        item = MenuItem.find_by(name: input)
        OrderItem.create(menu_item_id: item.id, user_id: @current_user.id)
        clear!
        order_menu
    end

    def order_menu
        puts "Select Menu Items to make an order, or Return to Main Menu🚪"
        puts "1. Select Menu Items"
        puts "2. Return to Main Menu🚪"
        print "Enter your selection: "
        input = gets.chomp
        clear!
        case input
        when "1"
            make_order
        when "2"
        clear!
        main_menu
        end
    end

    def main_menu
        puts "Main 🍔 Menu"
        puts
        puts "Hi #{@current_user.name}!"
        puts "What would you like to do next?"
        puts
        puts "1. View profile 😃"          
        puts "2. View menu items 🥞🥗🍔"
        puts "3. Make an order 💻"
        puts "4. Log out🚪"
        puts
        print "Enter your selection: "
        input = gets.chomp
        clear!
        case input
            when "1"
                profile
            when "2"
                menu_items
            when "3"
                order_menu
            when "4"
                puts "Have a nice day #{@current_user.name}!"
                puts
                puts "🥩🍔🍗 Stay Funky 🍗🍔🥩"
                puts
        end
    end     
end # End of class



# # puts "Remove order item."
# # puts "Here's a list of your order: "
# OrderItem.all.each do |order|
# puts "#{@current_user.view_order}."
# end
# # puts "Please enter order item ID"
# # order_item_id = gets.chomp
# OrderItem.destroy(order_item_id: order_item.id, user_id: @current_user.id)