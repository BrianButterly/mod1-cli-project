
class User < ActiveRecord::Base
    has_many :order_items
    has_many :menu_items, through: :order_items


    #view their order(Read)
    def view_order
     user_past_foods = self.order_items.map do |order_item_instance|
            order_item_instance.menu_item.name #use .join(", ") to remove brackets
            #binding.pry
        end
        user_past_foods.join(", ") #how to remove quotes?
    end

    def delete_previous_order
        OrderItem.find_by(user_id: @current_user.id, order_item_id: item.id) 
        @current_user.order_item.last.destroy 
    end

    def change_order(order_id, new_menu_id)
        order_to_update = OrderItem.find(order_id)
        order_to_update.update(menu_item_id: new_menu_id)
    end

end#end of class
