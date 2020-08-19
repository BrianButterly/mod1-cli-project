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
        puts "4. Delete an order"   
        print "Enter your selection: "
        input = gets.chomp
        clear!
      
        case input
            when "1"
                puts "#{@current_user.name}'s Profile Page"

                puts "1. previous orders"
                    puts @current_user.view_order
            
               
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
        end
    end     
end # End of class

# def create_order(name, price, food_type)
#     MenuItem.create(name: name, price: price, food_type: food_type)
# end