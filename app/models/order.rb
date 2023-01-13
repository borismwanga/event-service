class Order < ApplicationRecord
  validates :table, presence: true
  validates :order_time, presence: true
  validates :status, presence: true, inclusion: { in: %w(pending confirmed) }

  has_many :order_items
  has_many :drinks, through: :order_items
end
