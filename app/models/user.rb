
class User < ActiveRecord::Base
    has_many :order_items
    has_many :menu_items, through: :order_items


    # def over_20
    #    self.menu_items. select do |menu_item_instance|
    #     menu_item_instance 
    #     #binding.pry
    #    end
    # end

    #view their order(Read)
    def view_order
     user_past_foods = self.order_items.map do |order_item_instance|
            order_item_instance.menu_item.name #use .join(", ") to remove brackets
            #binding.pry
        end
        user_past_foods.join(", ") #how to remove quotes?
    end

    #change their order (Update)
    # def change_order
    #     binding.pry
    # end

end#end of class