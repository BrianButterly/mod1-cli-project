
class MenuItem < ActiveRecord::Base
    has_many :order_items
    has_many :users, through: :order_items



    # def browse_menu
    #     binding.pry
    # end


end