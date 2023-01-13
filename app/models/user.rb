class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :role, presence: true, inclusion: { in: %w(waiter manager head_of_service) }
  validates :table, presence: true, if: :waiter?
  validates :status, presence: true, inclusion: { in: %w(available busy) }
  validates :username, presence: true, uniqueness: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }

  def waiter?
    role == "waiter"
  end

  belongs_to :table, optional: true
  has_many :assignments
  has_many :tables, through: :assignments
end
