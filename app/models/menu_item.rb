
class MenuItem < ActiveRecord::Base
    has_many :order_items
    has_many :users, through: :order_items

    def display
        puts "MenuItem: #{self.name}, #{self.price}"
    end
end # End of class
