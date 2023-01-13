class Table < ApplicationRecord
    validates :table_number, presence: true, uniqueness: true
    validates :status, presence: true, inclusion: { in: %w(available occupied) }

    has_many :orders
    has_many :assignments
    has_many :users, through: :assignments
end
