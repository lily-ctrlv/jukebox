class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :display_name, presence: true
  validates :balance, numericality: true
  validates :dj, inclusion: { in: [true, false] }
end
