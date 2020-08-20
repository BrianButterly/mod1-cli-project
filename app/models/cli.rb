class Cli

    def clear!
        puts `clear`
    end

    def login
        clear!
        puts "

        ███████╗██╗   ██╗███╗   ██╗██╗  ██╗██╗   ██╗     ███╗   ███╗██╗   ██╗███╗   ██╗ ██████╗██╗  ██╗
        ██╔════╝██║   ██║████╗  ██║██║ ██╔╝╚██╗ ██╔╝     ████╗ ████║██║   ██║████╗  ██║██╔════╝██║  ██║
        █████╗  ██║   ██║██╔██╗ ██║█████╔╝  ╚████╔╝█████╗██╔████╔██║██║   ██║██╔██╗ ██║██║     ███████║
        ██╔══╝  ██║   ██║██║╚██╗██║██╔═██╗   ╚██╔╝ ╚════╝██║╚██╔╝██║██║   ██║██║╚██╗██║██║     ██╔══██║
        ██║     ╚██████╔╝██║ ╚████║██║  ██╗   ██║        ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║╚██████╗██║  ██║
        ╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝        ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝
        
        
        "
        `say -v"Victoria" "Lets Get Funky!"`
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
                puts "🥩🍔🍗 Stay Funky 🍗🍔🥩
                
                "
                `say -v"Victoria" "Stay funky my friend"`
                puts "Creators: Brian Butterly, Victor Manzanilla and MaryElizabeth Gonzales(Mizzy)"
                puts "Flatiron Mod 1 Cli Project
                "
                puts "Thanks All!
                "
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

    def menu_items
        puts "Menu 🍴 Items"
        puts
        MenuItem.all.each do |menu_item_instance|
        menu_item_instance.display #def in menu_item.rb
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
        puts @current_user.view_order #def in user.rb
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
            @current_user.change_order
        when "2"
            @current_user.delete_previous_order
        when "3"
            main_menu
        end
    end

    def make_order
        puts "type the name of the menu item you would like" 
        MenuItem.all.each do |menu_item_instance|
        menu_item_instance.display #def in menu_items.rb
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

end # End of class


                                                                                  
