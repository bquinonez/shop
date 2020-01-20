class Item < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    has_many :users, through: :cart_items
end
