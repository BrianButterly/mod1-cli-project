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

    def main_menu
        puts "Main 🍔 Menu"
        puts
        puts "Hi #{@current_user.name}!"
        puts "What would you like to do next?"
        puts "1. View profile"          
        puts "2. View menu items"
        puts "3. Make an order"
        puts "4. Log out🚪"
        puts
        print "Enter your selection: "
        input = gets.chomp
        clear!
        case input
            when "1"
                   profile
            when "2"
                puts "Menu 🍴 Items"
                MenuItem.all.each do |menu_item_instance|
                menu_item_instance.display
                end
                puts "1. Exit🚪"
                print "Enter your selection: "
                input = gets.chomp
                clear!
                main_menu
            when "3"
                puts "Select Menu Items to make an order, or Exit🚪 to return to Main Menu"
                puts "1. Select Menu Items"
                puts "2. Exit🚪"
                print "Enter your selection: "
                input = gets.chomp
                clear!
        end
        # case input
        #     when "1"
        #         MenuItem.all.each do |menu_item_instance|
        #         menu_item_instance.display
        #         end
        #         print "Enter your selection: "
        #         input = gets.chomp
        #         item = MenuItem.find_by(name: input)
        #         OrderItem.create(menu_item_id: item.id, user_id: @current_user.id)
        # end
    end     

    def profile
        puts "#{@current_user.name}'s Profile 🌮 Page"
        puts "1. Previous orders"
        
        # # puts "Remove order item."
        # # puts "Here's a list of your order: "
        # OrderItem.all.each do |order|
        # puts "#{@current_user.view_order}."
        # end
        # # puts "Please enter order item ID"
        # # order_item_id = gets.chomp
        # OrderItem.destroy(order_item_id: order_item.id, user_id: @current_user.id)
    
        puts "2. Exit🚪"
        print "Enter your selection: "
        input = gets.chomp
        clear!
        case input
        when "1" 
            puts "Previous Orders"
            puts @current_user.view_order
            puts "1. Edit order"
            puts "2. Delete order"
            puts "3. Exit🚪"
            print "Enter your selection: "
            input = gets.chomp
            clear!
            main_menu
        when "2"
            clear!
            main_menu
        end
end
    
end # End of class

