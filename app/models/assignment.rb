class Assignment < ApplicationRecord
  validates :table, presence: true
  validates :user, presence: true
  validates :assigned_time, presence: true

  belongs_to :table
  belongs_to :user
end
