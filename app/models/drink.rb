class Drink < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    # validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :status, presence: true, inclusion: { in: %w(available out_of_stock) }

    has_many :order_items
    has_many :orders, through: :order_items

end
