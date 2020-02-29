class User < ApplicationRecord
  has_one_attached :avatar
  has_many :balance_payments
  has_many :bids
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :display_name, presence: true
  validates :balance, numericality: true
  validates :dj, inclusion: { in: [true, false] }
  validates :avatar, attached: true
  validates :first_name, :last_name, presence: true

  monetize :balance_cents

  def public_id
    return "avatar/" + Cloudinary::Utils.random_public_id
  end
end
