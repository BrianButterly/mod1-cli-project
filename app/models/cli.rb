class Cli

    def clear!
        puts `clear`
    end

    def login
        puts "Welcome to our app!"
        print "Enter name: "
        user_name = gets.chomp
        @current_user = User.find_by(name: user_name)
        clear!
        main_menu
    end

    def main_menu
        puts "Hi #{@current_user.name}!"
        puts "This is the Main Menu"
        puts "What would you like to do next?"
        puts "1. View profile"          
        puts "2. View Menu Items"
        puts "3. Make an Order"
        print "Enter your selection: "
        input = gets.chomp
        clear!
      
        case input
            when "1"
                puts "#{@current_user.name}'s Profile Page"

                puts "1. previous orders"
                puts @current_user.view_order
                
                    # # puts "Remove order item."
                    # # puts "Here's a list of your order: "
                    # OrderItem.all.each do |order|
                    # puts "#{@current_user.view_order}."
                    # end
                    # # puts "Please enter order item ID"
                    # # order_item_id = gets.chomp
                    # OrderItem.destroy(order_item_id: order_item.id, user_id: @current_user.id)
                
            
                    puts "2. Exit"
                    print "Enter your selection: "
                    input = gets.chomp
                    
                
            when "2"
                puts "menu items"
                MenuItem.all.each do |menu_item_instance|
                menu_item_instance.display
                end
                puts "7. Exit"
                print "Enter your selection: "
                input = gets.chomp
            when "3"
                puts "#{@current_user.name}, Select Menu Items to make an order, or Exit to return to Main Menu"
                puts "1. Select Menu Items"
                puts "2. Exit"
                print "Enter your selection: "
                input = gets.chomp
                clear!
        end
        case input
            when "1"
                MenuItem.all.each do |menu_item_instance|
                menu_item_instance.display
                end
                print "Enter your selection: "
                input = gets.chomp
                item = MenuItem.find_by(name: input)
                OrderItem.create(menu_item_id: item.id, user_id: @current_user.id)
        end
    end     
end # End of class

